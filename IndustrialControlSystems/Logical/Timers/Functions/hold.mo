within IndustrialControlSystems.Logical.Timers.Functions;
function hold
  "this function keeps high the set value after a rising edge, until an high value of the reset signal"
  input Boolean S_old;
  input Boolean S;
  input Boolean R;
  input Boolean S_hold;
  output Boolean Y;
algorithm
  if (S_old==false and S==true and R==false) then
    Y := true;
  elseif (S_old==true and S==false and R==false) then
    Y := true;
  elseif (S==true and R==false) then
    Y := true;
  elseif (S_hold==true and R==false) then
    Y := true;
  else
    Y := false;
  end if;
    annotation (Documentation(revisions="<html>
<dl><dt>First release of the Industrial Control Systems: April-May 2012</dt>
<dl><dt>List of revisions:</dt>
<p><ul>
<li>11 May 2012 (author: Marco Bonvini)</li>
</ul></p>
<dl><dt><b>Main Authors:</b> <br/></dt>
<dd>Marco Bonvini; &lt;<a href=\"mailto:bonvini@elet.polimi.it\">bonvini@elet.polimi.it</a>&gt;</dd>
<dd>Alberto Leva &lt;<a href=\"mailto:leva@elet.polimi.it\">leva@elet.polimi.it</a>&gt;<br/></dd>
<dd>Politecnico di Milano</dd>
<dd>Dipartimento di Elettronica e Informazione</dd>
<dd>Via Ponzio 34/5</dd>
<dd>20133 Milano - ITALIA -<br/></dd>
<dt><b>Copyright:</b> </dt>
<dd>Copyright &copy; 2010-2012, Marco Bonvini and Alberto Leva.<br/></dd>
<dd><i>The IndustrialControlSystems package is <b>free</b> software; it can be redistributed and/or modified under the terms of the <b>Modelica license</b>, see the license conditions and the accompanying <b>disclaimer</b> in the documentation of package Modelica in file &quot;Modelica/package.mo&quot;.</i><br/></dd>
</dl></html>"));
end hold;
