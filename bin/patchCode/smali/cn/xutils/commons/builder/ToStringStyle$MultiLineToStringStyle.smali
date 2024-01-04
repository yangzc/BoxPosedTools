.class final Lcn/xutils/commons/builder/ToStringStyle$MultiLineToStringStyle;
.super Lcn/xutils/commons/builder/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/builder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MultiLineToStringStyle"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 2

    .line 2179
    invoke-direct {p0}, Lcn/xutils/commons/builder/ToStringStyle;-><init>()V

    .line 2180
    const-string v0, "["

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/ToStringStyle$MultiLineToStringStyle;->setContentStart(Ljava/lang/String;)V

    .line 2181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/ToStringStyle$MultiLineToStringStyle;->setFieldSeparator(Ljava/lang/String;)V

    .line 2182
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/ToStringStyle$MultiLineToStringStyle;->setFieldSeparatorAtStart(Z)V

    .line 2183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/ToStringStyle$MultiLineToStringStyle;->setContentEnd(Ljava/lang/String;)V

    .line 2184
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 2192
    sget-object v0, Lcn/xutils/commons/builder/ToStringStyle$MultiLineToStringStyle;->MULTI_LINE_STYLE:Lcn/xutils/commons/builder/ToStringStyle;

    return-object v0
.end method
