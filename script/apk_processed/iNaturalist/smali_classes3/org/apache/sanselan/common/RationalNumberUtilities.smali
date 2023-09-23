.class public abstract Lorg/apache/sanselan/common/RationalNumberUtilities;
.super Ljava/lang/Number;
.source "RationalNumberUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/common/RationalNumberUtilities$Option;
    }
.end annotation


# static fields
.field private static final TOLERANCE:D = 1.0E-8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method public static final getRationalNumber(D)Lorg/apache/sanselan/common/RationalNumber;
    .locals 11

    const/4 v0, 0x1

    const-wide v1, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v3, p0, v1

    if-ltz v3, :cond_0

    .line 56
    new-instance p0, Lorg/apache/sanselan/common/RationalNumber;

    const p1, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lorg/apache/sanselan/common/RationalNumber;-><init>(II)V

    return-object p0

    :cond_0
    const-wide v1, -0x3e20000000400000L    # -2.147483647E9

    cmpg-double v3, p0, v1

    if-gtz v3, :cond_1

    .line 58
    new-instance p0, Lorg/apache/sanselan/common/RationalNumber;

    const p1, -0x7fffffff

    invoke-direct {p0, p1, v0}, Lorg/apache/sanselan/common/RationalNumber;-><init>(II)V

    return-object p0

    :cond_1
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    cmpg-double v4, p0, v1

    if-gez v4, :cond_2

    .line 64
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    cmpl-double v5, p0, v1

    if-nez v5, :cond_3

    .line 73
    new-instance p0, Lorg/apache/sanselan/common/RationalNumber;

    invoke-direct {p0, v3, v0}, Lorg/apache/sanselan/common/RationalNumber;-><init>(II)V

    return-object p0

    :cond_3
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, p0, v1

    if-ltz v5, :cond_5

    double-to-int v1, p0

    int-to-double v5, v1

    cmpg-double v2, v5, p0

    if-gez v2, :cond_4

    .line 79
    new-instance v2, Lorg/apache/sanselan/common/RationalNumber;

    invoke-direct {v2, v1, v0}, Lorg/apache/sanselan/common/RationalNumber;-><init>(II)V

    .line 80
    new-instance v5, Lorg/apache/sanselan/common/RationalNumber;

    add-int/2addr v1, v0

    invoke-direct {v5, v1, v0}, Lorg/apache/sanselan/common/RationalNumber;-><init>(II)V

    goto :goto_1

    .line 84
    :cond_4
    new-instance v2, Lorg/apache/sanselan/common/RationalNumber;

    add-int/lit8 v5, v1, -0x1

    invoke-direct {v2, v5, v0}, Lorg/apache/sanselan/common/RationalNumber;-><init>(II)V

    .line 85
    new-instance v5, Lorg/apache/sanselan/common/RationalNumber;

    invoke-direct {v5, v1, v0}, Lorg/apache/sanselan/common/RationalNumber;-><init>(II)V

    :goto_1
    move-object v1, v5

    goto :goto_2

    :cond_5
    div-double v5, v1, p0

    double-to-int v5, v5

    int-to-double v6, v5

    .line 91
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v6

    cmpg-double v6, v1, p0

    if-gez v6, :cond_6

    .line 93
    new-instance v2, Lorg/apache/sanselan/common/RationalNumber;

    invoke-direct {v2, v0, v5}, Lorg/apache/sanselan/common/RationalNumber;-><init>(II)V

    .line 94
    new-instance v1, Lorg/apache/sanselan/common/RationalNumber;

    sub-int/2addr v5, v0

    invoke-direct {v1, v0, v5}, Lorg/apache/sanselan/common/RationalNumber;-><init>(II)V

    goto :goto_2

    .line 98
    :cond_6
    new-instance v2, Lorg/apache/sanselan/common/RationalNumber;

    add-int/lit8 v1, v5, 0x1

    invoke-direct {v2, v0, v1}, Lorg/apache/sanselan/common/RationalNumber;-><init>(II)V

    .line 99
    new-instance v1, Lorg/apache/sanselan/common/RationalNumber;

    invoke-direct {v1, v0, v5}, Lorg/apache/sanselan/common/RationalNumber;-><init>(II)V

    .line 102
    :goto_2
    invoke-static {v2, p0, p1}, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->factory(Lorg/apache/sanselan/common/RationalNumber;D)Lorg/apache/sanselan/common/RationalNumberUtilities$Option;

    move-result-object v0

    .line 103
    invoke-static {v1, p0, p1}, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->factory(Lorg/apache/sanselan/common/RationalNumber;D)Lorg/apache/sanselan/common/RationalNumberUtilities$Option;

    move-result-object v1

    .line 106
    iget-wide v5, v0, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->error:D

    iget-wide v7, v1, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->error:D

    cmpg-double v2, v5, v7

    if-gez v2, :cond_7

    move-object v2, v0

    goto :goto_3

    :cond_7
    move-object v2, v1

    .line 110
    :goto_3
    iget-wide v5, v2, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->error:D

    const-wide v7, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpl-double v9, v5, v7

    if-lez v9, :cond_c

    const/16 v5, 0x64

    if-ge v3, v5, :cond_c

    .line 116
    iget-object v5, v0, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->rationalNumber:Lorg/apache/sanselan/common/RationalNumber;

    iget v5, v5, Lorg/apache/sanselan/common/RationalNumber;->numerator:I

    int-to-long v5, v5

    iget-object v7, v1, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->rationalNumber:Lorg/apache/sanselan/common/RationalNumber;

    iget v7, v7, Lorg/apache/sanselan/common/RationalNumber;->numerator:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    iget-object v7, v0, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->rationalNumber:Lorg/apache/sanselan/common/RationalNumber;

    iget v7, v7, Lorg/apache/sanselan/common/RationalNumber;->divisor:I

    int-to-long v7, v7

    iget-object v9, v1, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->rationalNumber:Lorg/apache/sanselan/common/RationalNumber;

    iget v9, v9, Lorg/apache/sanselan/common/RationalNumber;->divisor:I

    int-to-long v9, v9

    add-long/2addr v7, v9

    invoke-static {v5, v6, v7, v8}, Lorg/apache/sanselan/common/RationalNumber;->factoryMethod(JJ)Lorg/apache/sanselan/common/RationalNumber;

    move-result-object v5

    .line 121
    invoke-static {v5, p0, p1}, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->factory(Lorg/apache/sanselan/common/RationalNumber;D)Lorg/apache/sanselan/common/RationalNumberUtilities$Option;

    move-result-object v6

    .line 123
    invoke-virtual {v5}, Lorg/apache/sanselan/common/RationalNumber;->doubleValue()D

    move-result-wide v7

    cmpg-double v5, p0, v7

    if-gez v5, :cond_9

    .line 125
    iget-wide v7, v1, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->error:D

    iget-wide v9, v6, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->error:D

    cmpg-double v1, v7, v9

    if-gtz v1, :cond_8

    goto :goto_5

    :cond_8
    move-object v1, v6

    goto :goto_4

    .line 132
    :cond_9
    iget-wide v7, v0, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->error:D

    iget-wide v9, v6, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->error:D

    cmpg-double v0, v7, v9

    if-gtz v0, :cond_a

    goto :goto_5

    :cond_a
    move-object v0, v6

    .line 138
    :goto_4
    iget-wide v7, v6, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->error:D

    iget-wide v9, v2, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->error:D

    cmpg-double v5, v7, v9

    if-gez v5, :cond_b

    move-object v2, v6

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_c
    :goto_5
    if-eqz v4, :cond_d

    .line 142
    iget-object p0, v2, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->rationalNumber:Lorg/apache/sanselan/common/RationalNumber;

    invoke-virtual {p0}, Lorg/apache/sanselan/common/RationalNumber;->negate()Lorg/apache/sanselan/common/RationalNumber;

    move-result-object p0

    goto :goto_6

    :cond_d
    iget-object p0, v2, Lorg/apache/sanselan/common/RationalNumberUtilities$Option;->rationalNumber:Lorg/apache/sanselan/common/RationalNumber;

    :goto_6
    return-object p0
.end method
