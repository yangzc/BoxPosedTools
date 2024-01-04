.class public Lcn/xutils/commons/ObjectUtils$Null;
.super Ljava/lang/Object;
.source "ObjectUtils.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/ObjectUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Null"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x626e04ed40667ec5L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 93
    sget-object v0, Lcn/xutils/commons/ObjectUtils;->NULL:Lcn/xutils/commons/ObjectUtils$Null;

    return-object v0
.end method
