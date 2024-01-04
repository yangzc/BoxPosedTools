.class public final synthetic Lcn/xutils/commons/function/FailableIntUnaryOperator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/xutils/commons/function/FailableIntUnaryOperator;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/function/FailableIntUnaryOperator;

.field public final synthetic f$1:Lcn/xutils/commons/function/FailableIntUnaryOperator;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/function/FailableIntUnaryOperator;Lcn/xutils/commons/function/FailableIntUnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/function/FailableIntUnaryOperator$$ExternalSyntheticLambda0;->f$0:Lcn/xutils/commons/function/FailableIntUnaryOperator;

    iput-object p2, p0, Lcn/xutils/commons/function/FailableIntUnaryOperator$$ExternalSyntheticLambda0;->f$1:Lcn/xutils/commons/function/FailableIntUnaryOperator;

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 2

    iget-object v0, p0, Lcn/xutils/commons/function/FailableIntUnaryOperator$$ExternalSyntheticLambda0;->f$0:Lcn/xutils/commons/function/FailableIntUnaryOperator;

    iget-object v1, p0, Lcn/xutils/commons/function/FailableIntUnaryOperator$$ExternalSyntheticLambda0;->f$1:Lcn/xutils/commons/function/FailableIntUnaryOperator;

    invoke-static {v0, v1, p1}, Lcn/xutils/commons/function/FailableIntUnaryOperator;->lambda$andThen$2(Lcn/xutils/commons/function/FailableIntUnaryOperator;Lcn/xutils/commons/function/FailableIntUnaryOperator;I)I

    move-result p1

    return p1
.end method
