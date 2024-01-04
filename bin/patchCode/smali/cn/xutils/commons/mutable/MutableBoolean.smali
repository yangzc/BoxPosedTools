.class public Lcn/xutils/commons/mutable/MutableBoolean;
.super Ljava/lang/Object;
.source "MutableBoolean.java"

# interfaces
.implements Lcn/xutils/commons/mutable/Mutable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/xutils/commons/mutable/Mutable<",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcn/xutils/commons/mutable/MutableBoolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x430a31a5c56f1c87L


# instance fields
.field private value:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Boolean;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcn/xutils/commons/mutable/MutableBoolean;->value:Z

    .line 68
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean p1, p0, Lcn/xutils/commons/mutable/MutableBoolean;->value:Z

    .line 58
    return-void
.end method


# virtual methods
.method public booleanValue()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcn/xutils/commons/mutable/MutableBoolean;->value:Z

    return v0
.end method

.method public compareTo(Lcn/xutils/commons/mutable/MutableBoolean;)I
    .locals 2
    .param p1, "other"    # Lcn/xutils/commons/mutable/MutableBoolean;

    .line 192
    iget-boolean v0, p0, Lcn/xutils/commons/mutable/MutableBoolean;->value:Z

    iget-boolean v1, p1, Lcn/xutils/commons/mutable/MutableBoolean;->value:Z

    invoke-static {v0, v1}, Lcn/xutils/commons/BooleanUtils;->compare(ZZ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 33
    check-cast p1, Lcn/xutils/commons/mutable/MutableBoolean;

    invoke-virtual {p0, p1}, Lcn/xutils/commons/mutable/MutableBoolean;->compareTo(Lcn/xutils/commons/mutable/MutableBoolean;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 167
    instance-of v0, p1, Lcn/xutils/commons/mutable/MutableBoolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 168
    iget-boolean v0, p0, Lcn/xutils/commons/mutable/MutableBoolean;->value:Z

    move-object v2, p1

    check-cast v2, Lcn/xutils/commons/mutable/MutableBoolean;

    invoke-virtual {v2}, Lcn/xutils/commons/mutable/MutableBoolean;->booleanValue()Z

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 170
    :cond_1
    return v1
.end method

.method public getValue()Ljava/lang/Boolean;
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcn/xutils/commons/mutable/MutableBoolean;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcn/xutils/commons/mutable/MutableBoolean;->getValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcn/xutils/commons/mutable/MutableBoolean;->value:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFalse()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcn/xutils/commons/mutable/MutableBoolean;->value:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isTrue()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcn/xutils/commons/mutable/MutableBoolean;->value:Z

    return v0
.end method

.method public setFalse()V
    .locals 1

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/xutils/commons/mutable/MutableBoolean;->value:Z

    .line 96
    return-void
.end method

.method public setTrue()V
    .locals 1

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/xutils/commons/mutable/MutableBoolean;->value:Z

    .line 105
    return-void
.end method

.method public setValue(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Boolean;

    .line 115
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcn/xutils/commons/mutable/MutableBoolean;->value:Z

    .line 116
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/xutils/commons/mutable/MutableBoolean;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setValue(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 86
    iput-boolean p1, p0, Lcn/xutils/commons/mutable/MutableBoolean;->value:Z

    .line 87
    return-void
.end method

.method public toBoolean()Ljava/lang/Boolean;
    .locals 1

    .line 154
    invoke-virtual {p0}, Lcn/xutils/commons/mutable/MutableBoolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 202
    iget-boolean v0, p0, Lcn/xutils/commons/mutable/MutableBoolean;->value:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
