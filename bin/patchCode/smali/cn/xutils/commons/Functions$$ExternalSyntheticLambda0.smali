.class public final synthetic Lcn/xutils/commons/Functions$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/xutils/commons/function/FailableRunnable;


# instance fields
.field public final synthetic f$0:[Lcn/xutils/commons/Functions$FailableRunnable;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>([Lcn/xutils/commons/Functions$FailableRunnable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda0;->f$0:[Lcn/xutils/commons/Functions$FailableRunnable;

    iput p2, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda0;->f$0:[Lcn/xutils/commons/Functions$FailableRunnable;

    iget v1, p0, Lcn/xutils/commons/Functions$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Lcn/xutils/commons/Functions;->lambda$tryWithResources$15([Lcn/xutils/commons/Functions$FailableRunnable;I)V

    return-void
.end method
