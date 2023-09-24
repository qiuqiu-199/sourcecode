.class Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;
.super Ljava/lang/Object;
.source "KeyWritableRepository.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserPacketItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;",
        ">;"
    }
.end annotation


# instance fields
.field attributeData:[B

.field comment:Ljava/lang/String;

.field email:Ljava/lang/String;

.field isPrimary:Z

.field name:Ljava/lang/String;

.field selfCert:Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

.field selfRevocation:Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

.field trustedCerts:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray<",
            "Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;",
            ">;"
        }
    .end annotation
.end field

.field type:Ljava/lang/Integer;

.field userId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 570
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 577
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->isPrimary:Z

    .line 580
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->trustedCerts:Landroid/support/v4/util/LongSparseArray;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method synthetic constructor <init>(Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$1;)V
    .locals 0

    .line 570
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 570
    check-cast p1, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->compareTo(Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;)I
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 586
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->selfRevocation:Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->selfRevocation:Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v4, -0x1

    if-eq v0, v3, :cond_3

    .line 587
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->selfRevocation:Lorg/sufficientlysecure/keychain/pgp/WrappedSignature;

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, -0x1

    :goto_2
    return v2

    .line 592
    :cond_3
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->type:Ljava/lang/Integer;

    iget-object v3, v6, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->type:Ljava/lang/Integer;

    if-eq v0, v3, :cond_5

    .line 593
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->type:Ljava/lang/Integer;

    if-nez v6, :cond_4

    const/4 v2, -0x1

    :cond_4
    return v2

    .line 597
    :cond_5
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->trustedCerts:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->trustedCerts:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    if-eq v0, v3, :cond_9

    .line 598
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->trustedCerts:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    iget-object v6, v6, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->trustedCerts:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v6}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v6

    if-le v0, v6, :cond_8

    const/4 v2, -0x1

    :cond_8
    return v2

    .line 601
    :cond_9
    iget-boolean v0, v5, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->isPrimary:Z

    iget-boolean v6, v6, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->isPrimary:Z

    if-eq v0, v6, :cond_b

    .line 602
    iget-boolean v6, v5, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;->isPrimary:Z

    if-eqz v6, :cond_a

    const/4 v2, -0x1

    :cond_a
    return v2

    :cond_b
    return v1

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;--->compareTo(Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository$UserPacketItem;)I"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
