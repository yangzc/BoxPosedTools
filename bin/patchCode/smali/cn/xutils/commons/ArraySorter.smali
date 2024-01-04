.class public Lcn/xutils/commons/ArraySorter;
.super Ljava/lang/Object;
.source "ArraySorter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sort([B)[B
    .locals 0
    .param p0, "array"    # [B

    .line 37
    invoke-static {p0}, Ljava/util/Arrays;->sort([B)V

    .line 38
    return-object p0
.end method

.method public static sort([C)[C
    .locals 0
    .param p0, "array"    # [C

    .line 49
    invoke-static {p0}, Ljava/util/Arrays;->sort([C)V

    .line 50
    return-object p0
.end method

.method public static sort([D)[D
    .locals 0
    .param p0, "array"    # [D

    .line 61
    invoke-static {p0}, Ljava/util/Arrays;->sort([D)V

    .line 62
    return-object p0
.end method

.method public static sort([F)[F
    .locals 0
    .param p0, "array"    # [F

    .line 73
    invoke-static {p0}, Ljava/util/Arrays;->sort([F)V

    .line 74
    return-object p0
.end method

.method public static sort([I)[I
    .locals 0
    .param p0, "array"    # [I

    .line 85
    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    .line 86
    return-object p0
.end method

.method public static sort([J)[J
    .locals 0
    .param p0, "array"    # [J

    .line 97
    invoke-static {p0}, Ljava/util/Arrays;->sort([J)V

    .line 98
    return-object p0
.end method

.method public static sort([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 122
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 123
    return-object p0
.end method

.method public static sort([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)[TT;"
        }
    .end annotation

    .line 137
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 138
    return-object p0
.end method

.method public static sort([S)[S
    .locals 0
    .param p0, "array"    # [S

    .line 109
    invoke-static {p0}, Ljava/util/Arrays;->sort([S)V

    .line 110
    return-object p0
.end method
