$(document).ready(function() {
    let aq = 2;
    function addQuestion() {
        $(`button.addquestion:first`).on('click', () => {
            $(`div.questions:first`).append(`
					<div class="question${aq}">
				        <div class="questioncontent" style="">
							<textarea name="content${aq}" id="content${aq}" style="" required=""></textarea>
					   	</div>
					    <div class="container questionoptions">
                            <div class="qpoints col-md-2" style="">
					   		    <input required="" type="number" style="" name="points${aq}" id="points${aq}">
							</div>
                            <div class="options col-md-10" style="">
                                <input required="" class="col-md-11" type="text" name="opt${aq}1" id="opt${aq}1">
    							<input class="col-md-1" type="checkbox" name="opvalue${aq}1" id="opvalue${aq}1" value="opt${aq}1"><br>
    							<input required="" class="col-md-11" type="text" name="opt${aq}2" id="opt${aq}2">
    							<input class="col-md-1" type="checkbox" name="opvalue${aq}2" id="opvalue${aq}2" value="opt${aq}2"><br>
    							<input required="" class="col-md-11" type="text" name="opt${aq}3" id="opt${aq}3">
    							<input class="col-md-1" type="checkbox" name="opvalue${aq}3" id="opvalue${aq}3" value="opt${aq}3"><br>
    				        	<input required="" class="col-md-11" type="text" name="opt${aq}4" id="opt${aq}4">
    							<input class="col-md-1" type="checkbox" name="opvalue${aq}4" id="opvalue${aq}4" value="opt${aq}4"><br>
                            </div>
					    </div>
					</div>
			`);

            $(`button.rmquestion`).show();
            aq += 1;
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