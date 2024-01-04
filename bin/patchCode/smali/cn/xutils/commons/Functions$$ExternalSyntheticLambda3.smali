.class public final synthetic Lcn/xutils/commons/Functions$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/Functions$FailableRunnable;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/Functions$FailableRunnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda3;->f$0:Lcn/xutils/commons/Functions$FailableRunnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda3;->f$0:Lcn/xutils/commons/Functions$FailableRunnable;

    invoke-static {v0}, Lcn/xutils/commons/Functions;->lambda$asRunnable$11(Lcn/xutils/commons/Functions$FailableRunnable;)V

    return-void
.end method
