.class public Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV$Iso7816CompositeTLV;
.super Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;
.source "Iso7816TLV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Iso7816CompositeTLV"
.end annotation


# instance fields
.field public final mSubs:[Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;


# direct methods
.method public constructor <init>(II[B[Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    const/4 v0, 0x0

    .line 161
    invoke-direct {v1, v2, v3, p0, v0}, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;-><init>(II[BLorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV$1;)V

    .line 163
    iput-object p1, v1, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV$Iso7816CompositeTLV;->mSubs:[Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV$Iso7816CompositeTLV;---><init>(II[B[Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public prettyPrint(I)Ljava/lang/String;
    .locals 10

    move-object/16 v7, p0

    move/16 v8, p1

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "                                                  "

    mul-int/lit8 v2, v8, 0x2

    const/4 v3, 0x0

    .line 169
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "composite tag T %4x L %04d"

    const/4 v2, 0x2

    .line 170
    new-array v2, v2, [Ljava/lang/Object;

    iget v4, v7, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV$Iso7816CompositeTLV;->mT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget v4, v7, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV$Iso7816CompositeTLV;->mL:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV$Iso7816CompositeTLV;->mSubs:[Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;

    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    const/16 v6, 0xa

    .line 172
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v8, 0x1

    .line 173
    invoke-virtual {v4, v6}, Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV;->prettyPrint(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/Iso7816TLV$Iso7816CompositeTLV;--->prettyPrint(I)Ljava/lang/String;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
