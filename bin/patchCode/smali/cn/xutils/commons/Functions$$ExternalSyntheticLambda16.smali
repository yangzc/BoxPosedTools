.class public final synthetic Lcn/xutils/commons/Functions$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/Functions$FailableCallable;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/Functions$FailableCallable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda16;->f$0:Lcn/xutils/commons/Functions$FailableCallable;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda16;->f$0:Lcn/xutils/commons/Functions$FailableCallable;

    invoke-static {v0}, Lcn/xutils/commons/Functions;->lambda$asCallable$7(Lcn/xutils/commons/Functions$FailableCallable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
