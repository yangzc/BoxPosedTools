.class public final synthetic Lcn/xutils/commons/reflect/TypeUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/xutils/commons/reflect/Typed;


# instance fields
.field public final synthetic f$0:Ljava/lang/reflect/Type;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/reflect/TypeUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final getType()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lcn/xutils/commons/reflect/TypeUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcn/xutils/commons/reflect/TypeUtils;->lambda$wrap$0(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method
