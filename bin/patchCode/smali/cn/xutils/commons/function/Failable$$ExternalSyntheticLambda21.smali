.class public final synthetic Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/xutils/commons/function/FailableSupplier;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/function/FailableCallable;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/function/FailableCallable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda21;->f$0:Lcn/xutils/commons/function/FailableCallable;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda21;->f$0:Lcn/xutils/commons/function/FailableCallable;

    invoke-interface {v0}, Lcn/xutils/commons/function/FailableCallable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
