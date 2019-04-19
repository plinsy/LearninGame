$(document).ready(function() {
    // function refreshPage() {
    //     //Check if the current URL contains '# or hash'
    //     if (document.URL.indexOf("#") == -1) {
    //         // Set the URL to whatever it was plus "#loaded".
    //         url = document.URL + "#";
    //         location = "#";
    //         //Reload the page using reload() method
    //         location.reload(true);
    //     }
    // }

    // refreshPage();

    function addQuestion() {
        let aq = 2;
        $(`button.addquestion:first`).on('click', () => {
            $(`div.questions:first`).append(`
					<div class="question">
				        <div class="questioncontent" style="width: 100%">
							<textarea name="content${aq}" id="content${aq}" style="height: 43px; min-height: 43px; width: 94%; font-size: 2em;"></textarea>
					   		<input style="width: 5%; height: 43px; position: relative; bottom: 5px; font-size: 5em;" type="number" name="points${aq}" id="points${aq}">
					   	</div>
					    <div class="container questionoption">
							<input type="text" name="opt${aq}1" id="opt${aq}1">
							<input type="checkbox" name="opvalue${aq}1" id="opvalue${aq}1" value="opt${aq}1"><br>
							<input type="text" name="opt${aq}2" id="opt${aq}2">
							<input type="checkbox" name="opvalue${aq}2" id="opvalue${aq}2" value="opt${aq}2"><br>
							<input type="text" name="opt${aq}3" id="opt${aq}3">
							<input type="checkbox" name="opvalue${aq}3" id="opvalue${aq}3" value="opt${aq}3"><br>
				        	<input type="text" name="opt${aq}4" id="opt${aq}4">
							<input type="checkbox" name="opvalue${aq}4" id="opvalue${aq}4" value="opt${aq}4"><br>
					    </div>
					    <br><br>
					</div>
				`);
            if (aq == 2) {
                $(`button.rmquestion`).show();
            }
            aq++;
        });
    }
    addQuestion();

    function rmQuestion() {
        $(`button.rmquestion`).hide();
        $(`button.rmquestion:first`).on('click', () => {
            $(`div.question:last`).remove();
        });
    }
    rmQuestion();
});