# jQuery

```HTML
<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8">
        <title>TITLE</title>
        <meta name="description" content="CONTENT">
        <link rel="stylesheet" type="text/css" href="style.css">
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script type="text/javascript">
            // "use strict";
            $(document).ready(function () {
                $("#button1").click(function () {
                    $("#addclass").addClass("red");
                })
                $("#logo").hide();
                $("#button2").click(function () {
                    $("#logo").slideToggle("slow");
                })
                $("#button3").click(function () {
                    $("#append").append("<p> new paragraph</p>");
                })
                $("#logo1").hide();
                $("#button4").click(function () {
                    $("#logo1").show();
                })
                $("#logo2").hide();
                $("#button5").click(function () {
                    $("#logo2").toggle();
                })
                $("#logo3").hide();
                $("#button6").click(function () {
                    $("#logo3").slideDown("slow");
                })
                $("#button7").click(function () {
                    $("#logo4").slideUp("slow");
                })
                $("#logo5").hide();
                $("#button8").click(function () {
                    $("#logo5").fadeIn("slow");
                })
                $("#button9").click(function () {
                    $("#logo6").fadeOut("slow");
                })
                $("#button10").click(function () {
                    $("#before").before("text ");
                })
                $("#button11").click(function () {
                    $("#after").after(" text");
                })
                $("#button12").click(function () {
                    $("#html").html("<span class='red'>HTML <b>HTML</b></span>");
                })
                $("input").change(function () {
                        var $input = $(this);
                        $("#attr").html(".attr( 'checked' ): <b>" + $input.attr("checked") + "</b><br>" +
                            ".prop( 'checked' ): <b>" + $input.prop("checked") + "</b><br>" +
                            ".is( ':checked' ): <b>" + $input.is(":checked") + "</b>");
                    })
                    .change();
                $(".name").click(function () {
                    var text = $(this).text();
                    $("#name").val(text);
                });
                $("#button13").click(function () {
                    $("#text").text("Change text");
                })
                $("#data").data("test", {
                    first: 29,
                    last: "Barbell"
                });
                $("span:first").text($("#data").data("test").first);
                $("span:last").text($("#data").data("test").last);
            })
        </script>
        <!--     <script src="main.js"></script> -->
    </head>

    <body>
        <div id="wrapper">
            <div class="divide">
                <h2 class="center">.addClass</h2>
                <button id="button1">Add Class</button>
                <p class="function" id="addclass">Click the button to add class 'red' to this paragraph</p>
            </div>
            <div class="divide">
                <h2 class="center">.slideToggle</h2>
                <button id="button2">Slide Toggle</button>
                <p class="function">Click the button to slidetoggle a hidden image</p>
                <img id="logo" src="cd.png" width="380" height="380">
            </div>
            <div class="divide">
                <h2 class="center">.append</h2>
                <button id="button3">Append</button>
                <p class="function" id="append">Click the button to append a new paragraph!</p>
            </div>
            <div class="divide">
                <h2 class="center">.show</h2>
                <button id="button4">Show</button>
                <p class="function">Click the button to show a hidden image!</p>
                <img id="logo1" src="cd.png" width="380" height="380">
            </div>
            <div class="divide">
                <h2 class="center">.toggle</h2>
                <button id="button5">Toggle</button>
                <p class="function">Click the button to toggle.</p>
                <img id="logo2" src="cd.png" width="380" height="380">
            </div>
            <div class="divide">
                <h2 class="center">.slideDown</h2>
                <button id="button6">Slide Down</button>
                <p class="function">Click the button to slideDown.</p>
                <img id="logo3" src="cd.png" width="380" height="380">
            </div>
            <div class="divide">
                <h2 class="center">.slideUp</h2>
                <button id="button7">Slide Up</button>
                <p class="function">Click the button to slideUp.</p>
                <img id="logo4" src="cd.png" width="380" height="380">
            </div>
            <div class="divide">
                <h2 class="center">.fadeIn</h2>
                <button id="button8">Fade In</button>
                <p class="function">Click the button to fadeIn.</p>
                <img id="logo5" src="cd.png" width="380" height="380">
            </div>
            <div class="divide">
                <h2 class="center">.fadeOut</h2>
                <button id="button9">Fade Out</button>
                <p class="function">Click the button to fadeOut.</p>
                <img id="logo6" src="cd.png" width="380" height="380">
            </div>
            <div class="divide">
                <h2 class="center">.before</h2>
                <button id="button10">Before</button>
                <p class="function" id="before">Click the button to add text before this paragraph.</p>
            </div>
            <div class="divide">
                <h2 class="center">.after</h2>
                <button id="button11">After</button>
                <p class="function" id="after">Click the button to add text after this paragraph.</p>
            </div>
            <div class="divide">
                <h2 class="center">.html</h2>
                <button id="button12">HTML</button>
                <p class="function" id="html">Click the button to change html.</p>
            </div>
            <div class="divide">
                <h2 class="center">.attr</h2>
                <input id="check" type="checkbox" checked="checked">
                <label for="check">Check attribute.</label></p>
                <p id="attr"></p>
            </div>
            <div class="divide">
                <h2 class="center">.val</h2>
                <div>
                    <button class="name">Cesar</button>
                    <button class="name">Kyle</button>
                    <button class="name">Casil</button>
                </div>
                <input id="name" type="text" value="click a button">
            </div>
            <div class="divide">
                <h2 class="center">.text</h2>
                <button id="button13">Text</button>
                <p class="function" id="text">Click the button to change text.</p>
            </div>
            <div class="divide">
                <h2 class="center">.data</h2>
                <div id="data">
                    The values stored were
                    <span></span>
                    and
                    <span></span>
                </div>
            </div>
        </div>
    </body>
</html>
```

[jQuery Example](https://github.com/ccasil/DojoAssignments/blob/master/WebFundamentals/jQuery/jQuery/index.html)
