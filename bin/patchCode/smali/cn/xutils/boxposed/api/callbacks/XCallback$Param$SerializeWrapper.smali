.class Lcn/xutils/boxposed/api/callbacks/XCallback$Param$SerializeWrapper;
.super Ljava/lang/Object;
.source "XCallback.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/boxposed/api/callbacks/XCallback$Param;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializeWrapper"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final object:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fgetobject(Lcn/xutils/boxposed/api/callbacks/XCallback$Param$SerializeWrapper;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcn/xutils/boxposed/api/callbacks/XCallback$Param$SerializeWrapper;->object:Ljava/lang/Object;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcn/xutils/boxposed/api/callbacks/XCallback$Param$SerializeWrapper;->object:Ljava/lang/Object;

    .line 127
    return-void
.end method
