.class public final synthetic Lcn/xutils/commons/ArrayUtils$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/ArrayUtils$$ExternalSyntheticLambda6;->f$0:[I

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/xutils/commons/ArrayUtils$$ExternalSyntheticLambda6;->f$0:[I

    invoke-static {v0, p1}, Lcn/xutils/commons/ArrayUtils;->lambda$toObject$6([II)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
