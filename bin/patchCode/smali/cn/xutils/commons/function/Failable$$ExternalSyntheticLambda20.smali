.class public final synthetic Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/xutils/commons/function/FailableRunnable;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/function/FailableDoubleConsumer;

.field public final synthetic f$1:D


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/function/FailableDoubleConsumer;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda20;->f$0:Lcn/xutils/commons/function/FailableDoubleConsumer;

    iput-wide p2, p0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda20;->f$1:D

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda20;->f$0:Lcn/xutils/commons/function/FailableDoubleConsumer;

    iget-wide v1, p0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda20;->f$1:D

    invoke-static {v0, v1, v2}, Lcn/xutils/commons/function/Failable;->lambda$accept$2(Lcn/xutils/commons/function/FailableDoubleConsumer;D)V

    return-void
.end method
