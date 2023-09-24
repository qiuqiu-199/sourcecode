.class Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$3;
.super Ljava/lang/Object;
.source "UncachedKeyRing.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->merge(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 1150
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$3;->this$0:Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$3;---><init>(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1150
    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$3;->compare([B[B)I

    move-result p1

    return p1
.end method

.method public compare([B[B)I
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    .line 1153
    array-length v0, v5

    array-length v1, v6

    if-eq v0, v1, :cond_0

    .line 1154
    array-length v5, v5

    array-length v6, v6

    sub-int/2addr v5, v6

    return v5

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1157
    :goto_0
    array-length v2, v5

    if-ge v1, v2, :cond_2

    .line 1158
    aget-byte v2, v5, v1

    aget-byte v3, v6, v1

    if-eq v2, v3, :cond_1

    .line 1159
    aget-byte v5, v5, v1

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, v6, v1

    and-int/lit16 v6, v6, 0xff

    sub-int/2addr v5, v6

    return v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing$3;--->compare([B[B)I"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
