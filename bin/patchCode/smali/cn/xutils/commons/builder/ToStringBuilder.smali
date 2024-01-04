.class public Lcn/xutils/commons/builder/ToStringBuilder;
.super Ljava/lang/Object;
.source "ToStringBuilder.java"

# interfaces
.implements Lcn/xutils/commons/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/xutils/commons/builder/Builder<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile defaultStyle:Lcn/xutils/commons/builder/ToStringStyle;


# instance fields
.field private final buffer:Ljava/lang/StringBuffer;

.field private final object:Ljava/lang/Object;

.field private final style:Lcn/xutils/commons/builder/ToStringStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    sget-object v0, Lcn/xutils/commons/builder/ToStringStyle;->DEFAULT_STYLE:Lcn/xutils/commons/builder/ToStringStyle;

    sput-object v0, Lcn/xutils/commons/builder/ToStringBuilder;->defaultStyle:Lcn/xutils/commons/builder/ToStringStyle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcn/xutils/commons/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    .line 220
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "style"    # Lcn/xutils/commons/builder/ToStringStyle;

    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/xutils/commons/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    .line 232
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "style"    # Lcn/xutils/commons/builder/ToStringStyle;
    .param p3, "buffer"    # Ljava/lang/StringBuffer;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    if-nez p2, :cond_0

    .line 247
    invoke-static {}, Lcn/xutils/commons/builder/ToStringBuilder;->getDefaultStyle()Lcn/xutils/commons/builder/ToStringStyle;

    move-result-object p2

    .line 249
    :cond_0
    if-nez p3, :cond_1

    .line 250
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object p3, v0

    .line 252
    :cond_1
    iput-object p3, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    .line 253
    iput-object p2, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    .line 254
    iput-object p1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->object:Ljava/lang/Object;

    .line 256
    invoke-virtual {p2, p3, p1}, Lcn/xutils/commons/builder/ToStringStyle;->appendStart(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 257
    return-void
.end method

.method public static getDefaultStyle()Lcn/xutils/commons/builder/ToStringStyle;
    .locals 1

    .line 116
    sget-object v0, Lcn/xutils/commons/builder/ToStringBuilder;->defaultStyle:Lcn/xutils/commons/builder/ToStringStyle;

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 147
    invoke-static {p0}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lcn/xutils/commons/builder/ToStringStyle;

    .line 160
    invoke-static {p0, p1}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;Z)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lcn/xutils/commons/builder/ToStringStyle;
    .param p2, "outputTransients"    # Z

    .line 174
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;ZLjava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p1, "style"    # Lcn/xutils/commons/builder/ToStringStyle;
    .param p2, "outputTransients"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcn/xutils/commons/builder/ToStringStyle;",
            "Z",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 195
    .local p0, "object":Ljava/lang/Object;, "TT;"
    .local p3, "reflectUpToClass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultStyle(Lcn/xutils/commons/builder/ToStringStyle;)V
    .locals 1
    .param p0, "style"    # Lcn/xutils/commons/builder/ToStringStyle;

    .line 135
    const-string v0, "style"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/builder/ToStringStyle;

    sput-object v0, Lcn/xutils/commons/builder/ToStringBuilder;->defaultStyle:Lcn/xutils/commons/builder/ToStringStyle;

    .line 136
    return-void
.end method


# virtual methods
.method public append(B)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # B

    .line 291
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    .line 292
    return-object p0
.end method

.method public append(C)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # C

    .line 315
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    .line 316
    return-object p0
.end method

.method public append(D)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # D

    .line 339
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    .line 340
    return-object p0
.end method

.method public append(F)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # F

    .line 363
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    .line 364
    return-object p0
.end method

.method public append(I)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # I

    .line 387
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 388
    return-object p0
.end method

.method public append(J)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # J

    .line 411
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    .line 412
    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 435
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 436
    return-object p0
.end method

.method public append(Ljava/lang/String;B)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # B

    .line 530
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    .line 531
    return-object p0
.end method

.method public append(Ljava/lang/String;C)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # C

    .line 575
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    .line 576
    return-object p0
.end method

.method public append(Ljava/lang/String;D)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 621
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    .line 622
    return-object p0
.end method

.method public append(Ljava/lang/String;F)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 667
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    .line 668
    return-object p0
.end method

.method public append(Ljava/lang/String;I)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 713
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 714
    return-object p0
.end method

.method public append(Ljava/lang/String;J)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 759
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    .line 760
    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 805
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 806
    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;Z)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "fullDetail"    # Z

    .line 820
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 821
    return-object p0
.end method

.method public append(Ljava/lang/String;S)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # S

    .line 866
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    .line 867
    return-object p0
.end method

.method public append(Ljava/lang/String;Z)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 484
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 485
    return-object p0
.end method

.method public append(Ljava/lang/String;[B)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [B

    .line 542
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    .line 543
    return-object p0
.end method

.method public append(Ljava/lang/String;[BZ)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [B
    .param p3, "fullDetail"    # Z

    .line 562
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    .line 563
    return-object p0
.end method

.method public append(Ljava/lang/String;[C)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [C

    .line 588
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    .line 589
    return-object p0
.end method

.method public append(Ljava/lang/String;[CZ)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [C
    .param p3, "fullDetail"    # Z

    .line 608
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    .line 609
    return-object p0
.end method

.method public append(Ljava/lang/String;[D)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [D

    .line 634
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    .line 635
    return-object p0
.end method

.method public append(Ljava/lang/String;[DZ)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [D
    .param p3, "fullDetail"    # Z

    .line 654
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    .line 655
    return-object p0
.end method

.method public append(Ljava/lang/String;[F)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [F

    .line 680
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    .line 681
    return-object p0
.end method

.method public append(Ljava/lang/String;[FZ)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [F
    .param p3, "fullDetail"    # Z

    .line 700
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    .line 701
    return-object p0
.end method

.method public append(Ljava/lang/String;[I)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [I

    .line 726
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    .line 727
    return-object p0
.end method

.method public append(Ljava/lang/String;[IZ)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [I
    .param p3, "fullDetail"    # Z

    .line 746
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    .line 747
    return-object p0
.end method

.method public append(Ljava/lang/String;[J)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [J

    .line 772
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    .line 773
    return-object p0
.end method

.method public append(Ljava/lang/String;[JZ)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [J
    .param p3, "fullDetail"    # Z

    .line 792
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    .line 793
    return-object p0
.end method

.method public append(Ljava/lang/String;[Ljava/lang/Object;)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [Ljava/lang/Object;

    .line 833
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 834
    return-object p0
.end method

.method public append(Ljava/lang/String;[Ljava/lang/Object;Z)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [Ljava/lang/Object;
    .param p3, "fullDetail"    # Z

    .line 853
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 854
    return-object p0
.end method

.method public append(Ljava/lang/String;[S)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [S

    .line 879
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    .line 880
    return-object p0
.end method

.method public append(Ljava/lang/String;[SZ)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [S
    .param p3, "fullDetail"    # Z

    .line 899
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    .line 900
    return-object p0
.end method

.method public append(Ljava/lang/String;[Z)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [Z

    .line 497
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    .line 498
    return-object p0
.end method

.method public append(Ljava/lang/String;[ZZ)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [Z
    .param p3, "fullDetail"    # Z

    .line 517
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    .line 518
    return-object p0
.end method

.method public append(S)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # S

    .line 459
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    .line 460
    return-object p0
.end method

.method public append(Z)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # Z

    .line 267
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 268
    return-object p0
.end method

.method public append([B)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [B

    .line 303
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    .line 304
    return-object p0
.end method

.method public append([C)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [C

    .line 327
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    .line 328
    return-object p0
.end method

.method public append([D)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [D

    .line 351
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    .line 352
    return-object p0
.end method

.method public append([F)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [F

    .line 375
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    .line 376
    return-object p0
.end method

.method public append([I)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [I

    .line 399
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    .line 400
    return-object p0
.end method

.method public append([J)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [J

    .line 423
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    .line 424
    return-object p0
.end method

.method public append([Ljava/lang/Object;)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [Ljava/lang/Object;

    .line 447
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 448
    return-object p0
.end method

.method public append([S)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [S

    .line 471
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    .line 472
    return-object p0
.end method

.method public append([Z)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [Z

    .line 279
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Lcn/xutils/commons/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    .line 280
    return-object p0
.end method

.method public appendAsObjectToString(Ljava/lang/Object;)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 1
    .param p1, "srcObject"    # Ljava/lang/Object;

    .line 914
    invoke-virtual {p0}, Lcn/xutils/commons/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/xutils/commons/ObjectUtils;->identityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 915
    return-object p0
.end method

.method public appendSuper(Ljava/lang/String;)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 2
    .param p1, "superToString"    # Ljava/lang/String;

    .line 931
    if-eqz p1, :cond_0

    .line 932
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Lcn/xutils/commons/builder/ToStringStyle;->appendSuper(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 934
    :cond_0
    return-object p0
.end method

.method public appendToString(Ljava/lang/String;)Lcn/xutils/commons/builder/ToStringBuilder;
    .locals 2
    .param p1, "toString"    # Ljava/lang/String;

    .line 965
    if-eqz p1, :cond_0

    .line 966
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    iget-object v1, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Lcn/xutils/commons/builder/ToStringStyle;->appendToString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 968
    :cond_0
    return-object p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcn/xutils/commons/builder/ToStringBuilder;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public build()Ljava/lang/String;
    .locals 1

    .line 1032
    invoke-virtual {p0}, Lcn/xutils/commons/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 978
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getStringBuffer()Ljava/lang/StringBuffer;
    .locals 1

    .line 987
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public getStyle()Lcn/xutils/commons/builder/ToStringStyle;
    .locals 1

    .line 997
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1012
    invoke-virtual {p0}, Lcn/xutils/commons/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1013
    invoke-virtual {p0}, Lcn/xutils/commons/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcn/xutils/commons/builder/ToStringBuilder;->getStyle()Lcn/xutils/commons/builder/ToStringStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcn/xutils/commons/builder/ToStringStyle;->getNullText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1015
    :cond_0
    iget-object v0, p0, Lcn/xutils/commons/builder/ToStringBuilder;->style:Lcn/xutils/commons/builder/ToStringStyle;

    invoke-virtual {p0}, Lcn/xutils/commons/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcn/xutils/commons/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/xutils/commons/builder/ToStringStyle;->appendEnd(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 1017
    :goto_0
    invoke-virtual {p0}, Lcn/xutils/commons/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
