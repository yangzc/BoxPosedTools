.class public final synthetic Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/xutils/commons/function/FailableSupplier;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/function/FailableFunction;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/function/FailableFunction;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda7;->f$0:Lcn/xutils/commons/function/FailableFunction;

    iput-object p2, p0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda7;->f$0:Lcn/xutils/commons/function/FailableFunction;

    iget-object v1, p0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcn/xutils/commons/function/Failable;->lambda$apply$6(Lcn/xutils/commons/function/FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
