.class public Lcn/xutils/commons/concurrent/ConstantInitializer;
.super Ljava/lang/Object;
.source "ConstantInitializer.java"

# interfaces
.implements Lcn/xutils/commons/concurrent/ConcurrentInitializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/xutils/commons/concurrent/ConcurrentInitializer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final FMT_TO_STRING:Ljava/lang/String; = "ConstantInitializer@%d [ object = %s ]"


# instance fields
.field private final object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcn/xutils/commons/concurrent/ConstantInitializer;, "Lcn/xutils/commons/concurrent/ConstantInitializer<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcn/xutils/commons/concurrent/ConstantInitializer;->object:Ljava/lang/Object;

    .line 58
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 105
    .local p0, "this":Lcn/xutils/commons/concurrent/ConstantInitializer;, "Lcn/xutils/commons/concurrent/ConstantInitializer<TT;>;"
    if-ne p0, p1, :cond_0

    .line 106
    const/4 v0, 0x1

    return v0

    .line 108
    :cond_0
    instance-of v0, p1, Lcn/xutils/commons/concurrent/ConstantInitializer;

    if-nez v0, :cond_1

    .line 109
    const/4 v0, 0x0

    return v0

    .line 112
    :cond_1
    move-object v0, p1

    check-cast v0, Lcn/xutils/commons/concurrent/ConstantInitializer;

    .line 113
    .local v0, "c":Lcn/xutils/commons/concurrent/ConstantInitializer;, "Lcn/xutils/commons/concurrent/ConstantInitializer<*>;"
    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/ConstantInitializer;->getObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lcn/xutils/commons/concurrent/ConstantInitializer;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/xutils/commons/concurrent/ConcurrentException;
        }
    .end annotation

    .line 80
    .local p0, "this":Lcn/xutils/commons/concurrent/ConstantInitializer;, "Lcn/xutils/commons/concurrent/ConstantInitializer<TT;>;"
    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/ConstantInitializer;->getObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcn/xutils/commons/concurrent/ConstantInitializer;, "Lcn/xutils/commons/concurrent/ConstantInitializer<TT;>;"
    iget-object v0, p0, Lcn/xutils/commons/concurrent/ConstantInitializer;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 91
    .local p0, "this":Lcn/xutils/commons/concurrent/ConstantInitializer;, "Lcn/xutils/commons/concurrent/ConstantInitializer<TT;>;"
    iget-object v0, p0, Lcn/xutils/commons/concurrent/ConstantInitializer;->object:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 125
    .local p0, "this":Lcn/xutils/commons/concurrent/ConstantInitializer;, "Lcn/xutils/commons/concurrent/ConstantInitializer<TT;>;"
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/ConstantInitializer;->getObject()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 125
    const-string v1, "ConstantInitializer@%d [ object = %s ]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
