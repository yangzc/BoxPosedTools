.class final Lcn/xutils/commons/builder/ToStringStyle$ShortPrefixToStringStyle;
.super Lcn/xutils/commons/builder/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/builder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ShortPrefixToStringStyle"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 1

    .line 2115
    invoke-direct {p0}, Lcn/xutils/commons/builder/ToStringStyle;-><init>()V

    .line 2116
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/ToStringStyle$ShortPrefixToStringStyle;->setUseShortClassName(Z)V

    .line 2117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/ToStringStyle$ShortPrefixToStringStyle;->setUseIdentityHashCode(Z)V

    .line 2118
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 2125
    sget-object v0, Lcn/xutils/commons/builder/ToStringStyle$ShortPrefixToStringStyle;->SHORT_PREFIX_STYLE:Lcn/xutils/commons/builder/ToStringStyle;

    return-object v0
.end method
