/* Generated By:JJTree: Do not edit this line. ASTunlabeledProgramCrRule.java Version 4.3 */
/* JavaCCOptions:MULTI=true,NODE_USES_PARSER=false,VISITOR=true,TRACK_TOKENS=false,NODE_PREFIX=AST,NODE_EXTENDS=,NODE_FACTORY=,SUPPORT_CLASS_VISIBILITY_PUBLIC=true */
package parser;

public class ASTunlabeledProgramCrRule extends SimpleNode {
	public ASTunlabeledProgramCrRule(int id) {
		super(id);
	}

	public ASTunlabeledProgramCrRule(SparcTranslator p, int id) {
		super(p, id);
	}

	/** Accept the visitor. **/
	public Object jjtAccept(SparcTranslatorVisitor visitor, Object data) {
		return visitor.visit(this, data);
	}

	public String toString() {
		StringBuilder result = new StringBuilder();
		if (((SimpleNode) this.jjtGetChild(0)).getId() == SparcTranslatorTreeConstants.JJTHEAD) {
			result.append(((SimpleNode) this.jjtGetChild(0)).toString());
		}
		ASTbody body = null;
		if (this.jjtGetNumChildren() > 1) {
			body = (ASTbody) this.jjtGetChild(1);
		}
		if (((SimpleNode) this.jjtGetChild(0)).getId() == SparcTranslatorTreeConstants.JJTBODY) {
			body = ((ASTbody) this.jjtGetChild(0));
		}
		if (body != null) {
			result.append(":-");
			result.append(body.toString());
			result.append(".");
		}
		return result.toString();
	}
}
/*
 * JavaCC - OriginalChecksum=21eea29369312fd4fd776a65fb9cad90 (do not edit this
 * line)
 */