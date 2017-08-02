(function ($) {

    $.fn.beautify = function (settings, params) {
        if (typeof settings == 'string' && this.data("beautify")) {
            params = Array.prototype.slice.call(arguments);
            params = params.slice(1);
            var inst = this.data("beautify");
            if (settings == 'inst') {
                return inst;
            }
            return inst[settings] && $.isFunction(inst[settings]) && inst[settings].apply(inst, params);
        }
        return this.each(function () {
            var $this = $(this)
            new $.fn.beautify.inst($this, settings).init();
        });
    };
    $.fn.beautify.default = {
        event: false,
        target: false
    };
    $.fn.beautify.inst = function ($el, settings) {
        var xThis = this;
        this.settings = $.extend({}, $.fn.beautify.default, settings);
        this.settings = $.extend({}, this.settings, $el.data());
        this.$el = $el;
        this.el = $el.get();
        $el.data("beautify", this);
        this.init = function () {

            if (this.settings.target.length > 0) {
                this.$target = $(this.settings.target);
            } else {
                this.$target = this.$el;
            }
            this.codeFold(this.$target);
            if (this.settings.event) {
                this.$el.on(this.settings.event, function () {
                    xThis.beautify(xThis.$target);
                });
            } else {
                this.beautify(this.$target);
            }
        };
        this.beautify = function ($target) {
            var editor = $target.data("beautify-editor");
            editor.setValue(js_beautify(editor.getValue()));
        };
        this.codeFold = function ($target) {
            this.editor = CodeMirror.fromTextArea($target.get(0), {
                lineNumbers: true,
                mode: "javascript",
                styleActiveLine: true,
                matchBrackets: true,
                highlightSelectionMatches: {showToken: /\w/, annotateScrollbar: true}
            });
            $target.data("beautify-editor", this.editor);

        };
        this.getEditor = function () {
            return this.editor;
        };
        this.getValue = function () {
            var editor = this.getEditor();
            return editor.getValue();
        };
    };
})(jQuery);
$(document).ready(function () {
    var editor = $(".tidy").beautify().beautify('getEditor');
    if (editor.getValue().length > 0) {
        var data = JSON.parse(editor.getValue());
    }
});

