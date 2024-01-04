.class public final synthetic Lcn/xutils/commons/function/FailableDoubleConsumer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/xutils/commons/function/FailableDoubleConsumer;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/function/FailableDoubleConsumer;

.field public final synthetic f$1:Lcn/xutils/commons/function/FailableDoubleConsumer;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/function/FailableDoubleConsumer;Lcn/xutils/commons/function/FailableDoubleConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/function/FailableDoubleConsumer$$ExternalSyntheticLambda0;->f$0:Lcn/xutils/commons/function/FailableDoubleConsumer;

    iput-object p2, p0, Lcn/xutils/commons/function/FailableDoubleConsumer$$ExternalSyntheticLambda0;->f$1:Lcn/xutils/commons/function/FailableDoubleConsumer;

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 2

    iget-object v0, p0, Lcn/xutils/commons/function/FailableDoubleConsumer$$ExternalSyntheticLambda0;->f$0:Lcn/xutils/commons/function/FailableDoubleConsumer;

    iget-object v1, p0, Lcn/xutils/commons/function/FailableDoubleConsumer$$ExternalSyntheticLambda0;->f$1:Lcn/xutils/commons/function/FailableDoubleConsumer;

    invoke-static {v0, v1, p1, p2}, Lcn/xutils/commons/function/FailableDoubleConsumer;->lambda$andThen$1(Lcn/xutils/commons/function/FailableDoubleConsumer;Lcn/xutils/commons/function/FailableDoubleConsumer;D)V

    return-void
.end method
