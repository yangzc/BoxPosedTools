.class public final synthetic Lcn/xutils/commons/concurrent/TimedSemaphore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/concurrent/TimedSemaphore;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/concurrent/TimedSemaphore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/concurrent/TimedSemaphore$$ExternalSyntheticLambda0;->f$0:Lcn/xutils/commons/concurrent/TimedSemaphore;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/xutils/commons/concurrent/TimedSemaphore$$ExternalSyntheticLambda0;->f$0:Lcn/xutils/commons/concurrent/TimedSemaphore;

    invoke-virtual {v0}, Lcn/xutils/commons/concurrent/TimedSemaphore;->endOfPeriod()V

    return-void
.end method
