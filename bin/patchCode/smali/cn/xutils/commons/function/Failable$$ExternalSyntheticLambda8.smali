.class public final synthetic Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/xutils/commons/function/FailableDoubleSupplier;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/function/FailableDoubleBinaryOperator;

.field public final synthetic f$1:D

.field public final synthetic f$2:D


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/function/FailableDoubleBinaryOperator;DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda8;->f$0:Lcn/xutils/commons/function/FailableDoubleBinaryOperator;

    iput-wide p2, p0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda8;->f$1:D

    iput-wide p4, p0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda8;->f$2:D

    return-void
.end method


# virtual methods
.method public final getAsDouble()D
    .locals 5

    iget-object v0, p0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda8;->f$0:Lcn/xutils/commons/function/FailableDoubleBinaryOperator;

    iget-wide v1, p0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda8;->f$1:D

    iget-wide v3, p0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda8;->f$2:D

    invoke-static {v0, v1, v2, v3, v4}, Lcn/xutils/commons/function/Failable;->lambda$applyAsDouble$7(Lcn/xutils/commons/function/FailableDoubleBinaryOperator;DD)D

    move-result-wide v0

    return-wide v0
.end method
