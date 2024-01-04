.class public final synthetic Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/function/FailableSupplier;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/function/FailableSupplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda10;->f$0:Lcn/xutils/commons/function/FailableSupplier;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/xutils/commons/function/Failable$$ExternalSyntheticLambda10;->f$0:Lcn/xutils/commons/function/FailableSupplier;

    invoke-static {v0}, Lcn/xutils/commons/function/Failable;->lambda$asSupplier$16(Lcn/xutils/commons/function/FailableSupplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
