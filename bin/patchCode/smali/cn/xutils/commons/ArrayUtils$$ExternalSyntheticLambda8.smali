.class public final synthetic Lcn/xutils/commons/ArrayUtils$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:[C


# direct methods
.method public synthetic constructor <init>([C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/ArrayUtils$$ExternalSyntheticLambda8;->f$0:[C

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/xutils/commons/ArrayUtils$$ExternalSyntheticLambda8;->f$0:[C

    invoke-static {v0, p1}, Lcn/xutils/commons/ArrayUtils;->lambda$toObject$3([CI)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method
