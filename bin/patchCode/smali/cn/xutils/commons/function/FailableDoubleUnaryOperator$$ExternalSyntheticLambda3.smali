.class public final synthetic Lcn/xutils/commons/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/xutils/commons/function/FailableDoubleUnaryOperator;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/function/FailableDoubleUnaryOperator;

.field public final synthetic f$1:Lcn/xutils/commons/function/FailableDoubleUnaryOperator;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/function/FailableDoubleUnaryOperator;Lcn/xutils/commons/function/FailableDoubleUnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda3;->f$0:Lcn/xutils/commons/function/FailableDoubleUnaryOperator;

    iput-object p2, p0, Lcn/xutils/commons/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda3;->f$1:Lcn/xutils/commons/function/FailableDoubleUnaryOperator;

    return-void
.end method


# virtual methods
.method public final applyAsDouble(D)D
    .locals 2

    iget-object v0, p0, Lcn/xutils/commons/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda3;->f$0:Lcn/xutils/commons/function/FailableDoubleUnaryOperator;

    iget-object v1, p0, Lcn/xutils/commons/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda3;->f$1:Lcn/xutils/commons/function/FailableDoubleUnaryOperator;

    invoke-static {v0, v1, p1, p2}, Lcn/xutils/commons/function/FailableDoubleUnaryOperator;->lambda$andThen$2(Lcn/xutils/commons/function/FailableDoubleUnaryOperator;Lcn/xutils/commons/function/FailableDoubleUnaryOperator;D)D

    move-result-wide p1

    return-wide p1
.end method
