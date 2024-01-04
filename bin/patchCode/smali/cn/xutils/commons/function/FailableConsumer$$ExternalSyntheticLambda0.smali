.class public final synthetic Lcn/xutils/commons/function/FailableConsumer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/xutils/commons/function/FailableConsumer;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/function/FailableConsumer;

.field public final synthetic f$1:Lcn/xutils/commons/function/FailableConsumer;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/function/FailableConsumer;Lcn/xutils/commons/function/FailableConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/function/FailableConsumer$$ExternalSyntheticLambda0;->f$0:Lcn/xutils/commons/function/FailableConsumer;

    iput-object p2, p0, Lcn/xutils/commons/function/FailableConsumer$$ExternalSyntheticLambda0;->f$1:Lcn/xutils/commons/function/FailableConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/xutils/commons/function/FailableConsumer$$ExternalSyntheticLambda0;->f$0:Lcn/xutils/commons/function/FailableConsumer;

    iget-object v1, p0, Lcn/xutils/commons/function/FailableConsumer$$ExternalSyntheticLambda0;->f$1:Lcn/xutils/commons/function/FailableConsumer;

    invoke-static {v0, v1, p1}, Lcn/xutils/commons/function/FailableConsumer;->lambda$andThen$0(Lcn/xutils/commons/function/FailableConsumer;Lcn/xutils/commons/function/FailableConsumer;Ljava/lang/Object;)V

    return-void
.end method
