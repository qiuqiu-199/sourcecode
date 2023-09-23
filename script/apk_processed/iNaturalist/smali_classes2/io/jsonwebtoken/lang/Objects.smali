.class public final Lio/jsonwebtoken/lang/Objects;
.super Ljava/lang/Object;
.source "Objects.java"


# static fields
.field private static final ARRAY_ELEMENT_SEPARATOR:Ljava/lang/String; = ", "

.field private static final ARRAY_END:Ljava/lang/String; = "}"

.field private static final ARRAY_START:Ljava/lang/String; = "{"

.field private static final EMPTY_ARRAY:Ljava/lang/String; = "{}"

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final INITIAL_HASH:I = 0x7

.field private static final INSTANCE:Lio/jsonwebtoken/lang/Objects;

.field private static final MULTIPLIER:I = 0x1f

.field private static final NULL_STRING:Ljava/lang/String; = "null"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lio/jsonwebtoken/lang/Objects;

    invoke-direct {v0}, Lio/jsonwebtoken/lang/Objects;-><init>()V

    sput-object v0, Lio/jsonwebtoken/lang/Objects;->INSTANCE:Lio/jsonwebtoken/lang/Objects;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addObjectToArray([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "O:TA;>([TA;TO;)[TA;"
        }
    .end annotation

    .line 189
    const-class v0, Ljava/lang/Object;

    if-eqz p0, :cond_0

    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :cond_1
    :goto_0
    const/4 v1, 0x1

    if-eqz p0, :cond_2

    .line 195
    array-length v2, p0

    add-int/2addr v2, v1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    .line 197
    :goto_1
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-eqz p0, :cond_3

    .line 199
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    :cond_3
    array-length p0, v0

    sub-int/2addr p0, v1

    aput-object p1, v0, p0

    return-object v0
.end method

.method public static caseInsensitiveValueOf([Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/Enum;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "*>;>([TE;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .line 170
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 171
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v2, p1

    const-string p0, "constant [%s] does not exist in enum type %s"

    .line 176
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static containsConstant([Ljava/lang/Enum;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 137
    invoke-static {p0, p1, v0}, Lio/jsonwebtoken/lang/Objects;->containsConstant([Ljava/lang/Enum;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static containsConstant([Ljava/lang/Enum;Ljava/lang/String;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .line 149
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    if-eqz p2, :cond_0

    .line 151
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 152
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static containsElement([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 120
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 121
    invoke-static {v3, p1}, Lio/jsonwebtoken/lang/Objects;->nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static getDisplayString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 573
    :cond_0
    invoke-static {p0}, Lio/jsonwebtoken/lang/Objects;->nullSafeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIdentityHexString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 556
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hashCode(D)I
    .locals 0

    .line 508
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    .line 509
    invoke-static {p0, p1}, Lio/jsonwebtoken/lang/Objects;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public static hashCode(F)I
    .locals 0

    .line 518
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    return p0
.end method

.method public static hashCode(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static hashCode(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/16 p0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 p0, 0x4d5

    :goto_0
    return p0
.end method

.method public static identityToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 546
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lio/jsonwebtoken/lang/Objects;->getIdentityHexString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isArray(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isCheckedException(Ljava/lang/Throwable;)Z
    .locals 1

    .line 51
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    instance-of p0, p0, Ljava/lang/Error;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isCompatibleWithThrowsClause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z
    .locals 5

    .line 63
    invoke-static {p0}, Lio/jsonwebtoken/lang/Objects;->isCheckedException(Ljava/lang/Throwable;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    .line 68
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 69
    aget-object v3, p1, v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static isEmpty([B)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 105
    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 95
    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static nullSafeClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 584
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "null"

    :goto_0
    return-object p0
.end method

.method public static varargs nullSafeClose([Ljava/io/Closeable;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 920
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    .line 923
    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_c

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 261
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    .line 264
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 265
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 266
    check-cast p0, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 268
    :cond_3
    instance-of v0, p0, [Z

    if-eqz v0, :cond_4

    instance-of v0, p1, [Z

    if-eqz v0, :cond_4

    .line 269
    check-cast p0, [Z

    check-cast p1, [Z

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p0

    return p0

    .line 271
    :cond_4
    instance-of v0, p0, [B

    if-eqz v0, :cond_5

    instance-of v0, p1, [B

    if-eqz v0, :cond_5

    .line 272
    check-cast p0, [B

    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    .line 274
    :cond_5
    instance-of v0, p0, [C

    if-eqz v0, :cond_6

    instance-of v0, p1, [C

    if-eqz v0, :cond_6

    .line 275
    check-cast p0, [C

    check-cast p1, [C

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p0

    return p0

    .line 277
    :cond_6
    instance-of v0, p0, [D

    if-eqz v0, :cond_7

    instance-of v0, p1, [D

    if-eqz v0, :cond_7

    .line 278
    check-cast p0, [D

    check-cast p1, [D

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p0

    return p0

    .line 280
    :cond_7
    instance-of v0, p0, [F

    if-eqz v0, :cond_8

    instance-of v0, p1, [F

    if-eqz v0, :cond_8

    .line 281
    check-cast p0, [F

    check-cast p1, [F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    return p0

    .line 283
    :cond_8
    instance-of v0, p0, [I

    if-eqz v0, :cond_9

    instance-of v0, p1, [I

    if-eqz v0, :cond_9

    .line 284
    check-cast p0, [I

    check-cast p1, [I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0

    .line 286
    :cond_9
    instance-of v0, p0, [J

    if-eqz v0, :cond_a

    instance-of v0, p1, [J

    if-eqz v0, :cond_a

    .line 287
    check-cast p0, [J

    check-cast p1, [J

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p0

    return p0

    .line 289
    :cond_a
    instance-of v0, p0, [S

    if-eqz v0, :cond_b

    instance-of v0, p1, [S

    if-eqz v0, :cond_b

    .line 290
    check-cast p0, [S

    check-cast p1, [S

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result p0

    return p0

    :cond_b
    return v1

    :cond_c
    :goto_0
    return v1
.end method

.method public static nullSafeHashCode(Ljava/lang/Object;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 317
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 318
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 319
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lio/jsonwebtoken/lang/Objects;->nullSafeHashCode([Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 321
    :cond_1
    instance-of v0, p0, [Z

    if-eqz v0, :cond_2

    .line 322
    check-cast p0, [Z

    invoke-static {p0}, Lio/jsonwebtoken/lang/Objects;->nullSafeHashCode([Z)I

    move-result p0

    return p0

    .line 324
    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    .line 325
    check-cast p0, [B

    invoke-static {p0}, Lio/jsonwebtoken/lang/Objects;->nullSafeHashCode([B)I

    move-result p0

    return p0

    .line 327
    :cond_3
    instance-of v0, p0, [C

    if-eqz v0, :cond_4

    .line 328
    check-cast p0, [C

    invoke-static {p0}, Lio/jsonwebtoken/lang/Objects;->nullSafeHashCode([C)I

    move-result p0

    return p0

    .line 330
    :cond_4
    instance-of v0, p0, [D

    if-eqz v0, :cond_5

    .line 331
    check-cast p0, [D

    invoke-static {p0}, Lio/jsonwebtoken/lang/Objects;->nullSafeHashCode([D)I

    move-result p0

    return p0

    .line 333
    :cond_5
    instance-of v0, p0, [F

    if-eqz v0, :cond_6

    .line 334
    check-cast p0, [F

    invoke-static {p0}, Lio/jsonwebtoken/lang/Objects;->nullSafeHashCode([F)I

    move-result p0

    return p0

    .line 336
    :cond_6
    instance-of v0, p0, [I

    if-eqz v0, :cond_7

    .line 337
    check-cast p0, [I

    invoke-static {p0}, Lio/jsonwebtoken/lang/Objects;->nullSafeHashCode([I)I

    move-result p0

    return p0

    .line 339
    :cond_7
    instance-of v0, p0, [J

    if-eqz v0, :cond_8

    .line 340
    check-cast p0, [J

    invoke-static {p0}, Lio/jsonwebtoken/lang/Objects;->nullSafeHashCode([J)I

    move-result p0

    return p0

    .line 342
    :cond_8
    instance-of v0, p0, [S

    if-eqz v0, :cond_9

    .line 343
    check-cast p0, [S

    invoke-static {p0}, Lio/jsonwebtoken/lang/Objects;->nullSafeHashCode([S)I

    move-result p0

    return p0

    .line 346
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public static nullSafeHashCode([B)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x7

    .line 390
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 392
    aget-byte v3, p0, v0

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static nullSafeHashCode([C)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x7

    .line 406
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 408
    aget-char v3, p0, v0

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static nullSafeHashCode([D)I
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x7

    .line 422
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 424
    aget-wide v3, p0, v0

    invoke-static {v3, v4}, Lio/jsonwebtoken/lang/Objects;->hashCode(D)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static nullSafeHashCode([F)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x7

    .line 438
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 440
    aget v3, p0, v0

    invoke-static {v3}, Lio/jsonwebtoken/lang/Objects;->hashCode(F)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static nullSafeHashCode([I)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x7

    .line 454
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 456
    aget v3, p0, v0

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static nullSafeHashCode([J)I
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x7

    .line 470
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 472
    aget-wide v3, p0, v0

    invoke-static {v3, v4}, Lio/jsonwebtoken/lang/Objects;->hashCode(J)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static nullSafeHashCode([Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x7

    .line 358
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 360
    aget-object v3, p0, v0

    invoke-static {v3}, Lio/jsonwebtoken/lang/Objects;->nullSafeHashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static nullSafeHashCode([S)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x7

    .line 486
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 488
    aget-short v3, p0, v0

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static nullSafeHashCode([Z)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x7

    .line 374
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 376
    aget-boolean v3, p0, v0

    invoke-static {v3}, Lio/jsonwebtoken/lang/Objects;->hashCode(Z)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static nullSafeToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 599
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 600
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 602
    :cond_1
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 603
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lio/jsonwebtoken/lang/Objects;->nullSafeToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 605
    :cond_2
    instance-of v0, p0, [Z

    if-eqz v0, :cond_3

    .line 606
    check-cast p0, [Z

    invoke-static {p0}, Lio/jsonwebtoken/lang/Objects;->nullSafeToString([Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 608
    :cond_3
    instance-of v0, p0, [B

    if-eqz v0, :cond_4

    .line 609
    check-cast p0, [B

    invoke-static {p0}, Lio/jsonwebtoken/lang/Objects;->nullSafeToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 611
    :cond_4
    instance-of v0, p0, [C

    if-eqz v0, :cond_5

    .line 612
    check-cast p0, [C

    invoke-static {p0}, Lio/jsonwebtoken/lang/Objects;->nullSafeToString([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 614
    :cond_5
    instance-of v0, p0, [D

    if-eqz v0, :cond_6

    .line 615
    check-cast p0, [D

    invoke-static {p0}, Lio/jsonwebtoken/lang/Objects;->nullSafeToString([D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 617
    :cond_6
    instance-of v0, p0, [F

    if-eqz v0, :cond_7

    .line 618
    check-cast p0, [F

    invoke-static {p0}, Lio/jsonwebtoken/lang/Objects;->nullSafeToString([F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 620
    :cond_7
    instance-of v0, p0, [I

    if-eqz v0, :cond_8

    .line 621
    check-cast p0, [I

    invoke-static {p0}, Lio/jsonwebtoken/lang/Objects;->nullSafeToString([I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 623
    :cond_8
    instance-of v0, p0, [J

    if-eqz v0, :cond_9

    .line 624
    check-cast p0, [J

    invoke-static {p0}, Lio/jsonwebtoken/lang/Objects;->nullSafeToString([J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 626
    :cond_9
    instance-of v0, p0, [S

    if-eqz v0, :cond_a

    .line 627
    check-cast p0, [S

    invoke-static {p0}, Lio/jsonwebtoken/lang/Objects;->nullSafeToString([S)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 629
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    goto :goto_0

    :cond_b
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static nullSafeToString([B)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 710
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    const-string p0, "{}"

    return-object p0

    .line 714
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    if-nez v2, :cond_2

    const-string v3, "{"

    .line 717
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v3, ", "

    .line 719
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    :goto_1
    aget-byte v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "}"

    .line 723
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static nullSafeToString([C)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 741
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    const-string p0, "{}"

    return-object p0

    .line 745
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    if-nez v2, :cond_2

    const-string v3, "{"

    .line 748
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v3, ", "

    .line 750
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v3, "\'"

    .line 752
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "}"

    .line 754
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static nullSafeToString([D)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 772
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    const-string p0, "{}"

    return-object p0

    .line 776
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    if-nez v2, :cond_2

    const-string v3, "{"

    .line 779
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v3, ", "

    .line 781
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    :goto_1
    aget-wide v3, p0, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "}"

    .line 786
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static nullSafeToString([F)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 804
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    const-string p0, "{}"

    return-object p0

    .line 808
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    if-nez v2, :cond_2

    const-string v3, "{"

    .line 811
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v3, ", "

    .line 813
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    :goto_1
    aget v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "}"

    .line 818
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static nullSafeToString([I)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 836
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    const-string p0, "{}"

    return-object p0

    .line 840
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    if-nez v2, :cond_2

    const-string v3, "{"

    .line 843
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v3, ", "

    .line 845
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    :goto_1
    aget v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "}"

    .line 849
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static nullSafeToString([J)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 867
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    const-string p0, "{}"

    return-object p0

    .line 871
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    if-nez v2, :cond_2

    const-string v3, "{"

    .line 874
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v3, ", "

    .line 876
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    :goto_1
    aget-wide v3, p0, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "}"

    .line 880
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static nullSafeToString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 647
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    const-string p0, "{}"

    return-object p0

    .line 651
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    if-nez v2, :cond_2

    const-string v3, "{"

    .line 654
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v3, ", "

    .line 656
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    :goto_1
    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "}"

    .line 660
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static nullSafeToString([S)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 898
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    const-string p0, "{}"

    return-object p0

    .line 902
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    if-nez v2, :cond_2

    const-string v3, "{"

    .line 905
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v3, ", "

    .line 907
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    :goto_1
    aget-short v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "}"

    .line 911
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static nullSafeToString([Z)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 678
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    const-string p0, "{}"

    return-object p0

    .line 682
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    if-nez v2, :cond_2

    const-string v3, "{"

    .line 685
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v3, ", "

    .line 687
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    :goto_1
    aget-boolean v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "}"

    .line 692
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toObjectArray(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    .line 216
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 217
    check-cast p0, [Ljava/lang/Object;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 220
    new-array p0, v0, [Ljava/lang/Object;

    return-object p0

    .line 222
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 225
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_2

    .line 227
    new-array p0, v0, [Ljava/lang/Object;

    return-object p0

    .line 229
    :cond_2
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 230
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    :goto_0
    if-ge v0, v1, :cond_3

    .line 232
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v2

    .line 223
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
