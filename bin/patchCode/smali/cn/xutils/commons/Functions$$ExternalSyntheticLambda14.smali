.class public final synthetic Lcn/xutils/commons/Functions$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/xutils/commons/function/FailableConsumer;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/Functions$FailableConsumer;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/Functions$FailableConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda14;->f$0:Lcn/xutils/commons/Functions$FailableConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda14;->f$0:Lcn/xutils/commons/Functions$FailableConsumer;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, p1}, Lcn/xutils/commons/Functions$FailableConsumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
