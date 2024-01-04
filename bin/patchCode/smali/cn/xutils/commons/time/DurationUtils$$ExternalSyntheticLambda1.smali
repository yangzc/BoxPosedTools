.class public final synthetic Lcn/xutils/commons/time/DurationUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/xutils/commons/function/FailableConsumer;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/function/FailableRunnable;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/function/FailableRunnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/time/DurationUtils$$ExternalSyntheticLambda1;->f$0:Lcn/xutils/commons/function/FailableRunnable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/xutils/commons/time/DurationUtils$$ExternalSyntheticLambda1;->f$0:Lcn/xutils/commons/function/FailableRunnable;

    check-cast p1, Ljava/time/Instant;

    invoke-static {v0, p1}, Lcn/xutils/commons/time/DurationUtils;->lambda$of$0(Lcn/xutils/commons/function/FailableRunnable;Ljava/time/Instant;)V

    return-void
.end method
