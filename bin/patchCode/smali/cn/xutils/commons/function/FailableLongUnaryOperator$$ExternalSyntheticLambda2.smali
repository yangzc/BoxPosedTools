.class public final synthetic Lcn/xutils/commons/function/FailableLongUnaryOperator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/xutils/commons/function/FailableLongUnaryOperator;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/function/FailableLongUnaryOperator;

.field public final synthetic f$1:Lcn/xutils/commons/function/FailableLongUnaryOperator;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/function/FailableLongUnaryOperator;Lcn/xutils/commons/function/FailableLongUnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/function/FailableLongUnaryOperator$$ExternalSyntheticLambda2;->f$0:Lcn/xutils/commons/function/FailableLongUnaryOperator;

    iput-object p2, p0, Lcn/xutils/commons/function/FailableLongUnaryOperator$$ExternalSyntheticLambda2;->f$1:Lcn/xutils/commons/function/FailableLongUnaryOperator;

    return-void
.end method


# virtual methods
.method public final applyAsLong(J)J
    .locals 2

    iget-object v0, p0, Lcn/xutils/commons/function/FailableLongUnaryOperator$$ExternalSyntheticLambda2;->f$0:Lcn/xutils/commons/function/FailableLongUnaryOperator;

    iget-object v1, p0, Lcn/xutils/commons/function/FailableLongUnaryOperator$$ExternalSyntheticLambda2;->f$1:Lcn/xutils/commons/function/FailableLongUnaryOperator;

    invoke-static {v0, v1, p1, p2}, Lcn/xutils/commons/function/FailableLongUnaryOperator;->lambda$compose$3(Lcn/xutils/commons/function/FailableLongUnaryOperator;Lcn/xutils/commons/function/FailableLongUnaryOperator;J)J

    move-result-wide p1

    return-wide p1
.end method
