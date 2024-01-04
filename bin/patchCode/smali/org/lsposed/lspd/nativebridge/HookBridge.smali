.class public Lorg/lsposed/lspd/nativebridge/HookBridge;
.super Ljava/lang/Object;
.source "HookBridge.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-string v0, "core"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native allocateObject(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation
.end method

.method public static native callbackSnapshot(Ljava/lang/Class;Ljava/lang/reflect/Executable;)[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Executable;",
            ")[[",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public static native deoptimizeMethod(Ljava/lang/reflect/Executable;)Z
.end method

.method public static native hookMethod(ZLjava/lang/reflect/Executable;Ljava/lang/Class;ILjava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/reflect/Executable;",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation
.end method

.method public static native instanceOf(Ljava/lang/Object;Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static varargs native invokeOriginalMethod(Ljava/lang/reflect/Executable;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method

.method public static varargs native invokeSpecialMethod(Ljava/lang/reflect/Executable;[CLjava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Executable;",
            "[C",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method

.method public static native setTrusted(Ljava/lang/Object;)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native unhookMethod(ZLjava/lang/reflect/Executable;Ljava/lang/Object;)Z
.end method
