.class abstract Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey;
.super Ljava/lang/Object;
.source "XposedHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/boxposed/api/XposedHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MemberCacheKey"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;,
        Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Field;,
        Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Constructor;
    }
.end annotation


# instance fields
.field private final hash:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1, "hash"    # I

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey;->hash:I

    .line 82
    return-void
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final hashCode()I
    .locals 1

    .line 89
    iget v0, p0, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey;->hash:I

    return v0
.end method
