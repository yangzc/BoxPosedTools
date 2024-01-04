.class public final synthetic Lcn/xutils/commons/Functions$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/xutils/commons/Functions$FailableRunnable;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/Functions$FailableConsumer;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/Functions$FailableConsumer;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda9;->f$0:Lcn/xutils/commons/Functions$FailableConsumer;

    iput-object p2, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda9;->f$0:Lcn/xutils/commons/Functions$FailableConsumer;

    iget-object v1, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcn/xutils/commons/Functions;->lambda$accept$1(Lcn/xutils/commons/Functions$FailableConsumer;Ljava/lang/Object;)V

    return-void
.end method
