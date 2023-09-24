.class public Lorg/sufficientlysecure/keychain/util/Passphrase;
.super Ljava/lang/Object;
.source "Passphrase.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/util/Passphrase;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCachedSessionKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/sufficientlysecure/keychain/pgp/ParcelableS2K;",
            "[B>;"
        }
    .end annotation
.end field

.field private mPassphrase:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 205
    new-instance v0, Lorg/sufficientlysecure/keychain/util/Passphrase$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/util/Passphrase$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/util/Passphrase;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/util/Passphrase;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 80
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Passphrase;->setEmpty()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/util/Passphrase;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 178
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-virtual {v6}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v0

    iput-object v0, v5, Lorg/sufficientlysecure/keychain/util/Passphrase;->mPassphrase:[C

    .line 180
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, v5, Lorg/sufficientlysecure/keychain/util/Passphrase;->mCachedSessionKeys:Ljava/util/HashMap;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 186
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/pgp/ParcelableS2K;

    .line 187
    invoke-virtual {v6}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 188
    iget-object v4, v5, Lorg/sufficientlysecure/keychain/util/Passphrase;->mCachedSessionKeys:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/Passphrase;---><init>(Landroid/os/Parcel;)V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/sufficientlysecure/keychain/util/Passphrase$1;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/text/Editable;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 57
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v0

    .line 59
    new-array v1, v0, [C

    iput-object v1, v3, Lorg/sufficientlysecure/keychain/util/Passphrase;->mPassphrase:[C

    .line 60
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/util/Passphrase;->mPassphrase:[C

    const/4 v2, 0x0

    invoke-interface {v4, v2, v0, v1, v2}, Landroid/text/Editable;->getChars(II[CI)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/Passphrase;---><init>(Landroid/text/Editable;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 66
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>(Landroid/text/Editable;)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/Passphrase;---><init>(Landroid/widget/EditText;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 73
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/util/Passphrase;->mPassphrase:[C

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/Passphrase;---><init>(Ljava/lang/String;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>([C)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 69
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/util/Passphrase;->mPassphrase:[C

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/Passphrase;---><init>([C)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public addCachedSessionKeyForParameters(ILorg/bouncycastle/bcpg/S2K;[B)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    .line 115
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/util/Passphrase;->mCachedSessionKeys:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/util/Passphrase;->mCachedSessionKeys:Ljava/util/HashMap;

    .line 118
    :cond_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/util/Passphrase;->mCachedSessionKeys:Ljava/util/HashMap;

    invoke-static {v2, v3}, Lorg/sufficientlysecure/keychain/pgp/ParcelableS2K;->fromS2K(ILorg/bouncycastle/bcpg/S2K;)Lorg/sufficientlysecure/keychain/pgp/ParcelableS2K;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/util/Passphrase;--->addCachedSessionKeyForParameters(ILorg/bouncycastle/bcpg/S2K;[B)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/Passphrase;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    if-ne v2, v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    if-eqz v3, :cond_2

    .line 165
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    check-cast v3, Lorg/sufficientlysecure/keychain/util/Passphrase;

    .line 170
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/util/Passphrase;->mPassphrase:[C

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/util/Passphrase;->mPassphrase:[C

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v3

    return v3

    :cond_2
    :goto_0
    const/4 v3, 0x0

    return v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/Passphrase;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/16 v0, p0

    .line 138
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Passphrase;->removeFromMemory()V

    .line 139
    invoke-super {v0}, Ljava/lang/Object;->finalize()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/util/Passphrase;--->finalize()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getCachedSessionKeyForParameters(ILorg/bouncycastle/bcpg/S2K;)[B
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move-object/16 v3, p2

    .line 103
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/util/Passphrase;->mCachedSessionKeys:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    return-object v2

    .line 106
    :cond_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/util/Passphrase;->mCachedSessionKeys:Ljava/util/HashMap;

    invoke-static {v2, v3}, Lorg/sufficientlysecure/keychain/pgp/ParcelableS2K;->fromS2K(ILorg/bouncycastle/bcpg/S2K;)Lorg/sufficientlysecure/keychain/pgp/ParcelableS2K;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    return-object v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/util/Passphrase;--->getCachedSessionKeyForParameters(ILorg/bouncycastle/bcpg/S2K;)[B"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getCharArray()[C
    .locals 4

    move-object/16 v1, p0

    .line 85
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/util/Passphrase;->mPassphrase:[C

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/Passphrase;--->getCharArray()[C"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 4

    move-object/16 v1, p0

    .line 175
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/util/Passphrase;->mPassphrase:[C

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/util/Passphrase;->mPassphrase:[C

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([C)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/Passphrase;--->hashCode()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isEmpty()Z
    .locals 4

    move-object/16 v1, p0

    .line 94
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/Passphrase;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/Passphrase;--->isEmpty()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public length()I
    .locals 4

    move-object/16 v1, p0

    .line 98
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/util/Passphrase;->mPassphrase:[C

    array-length v0, v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/Passphrase;--->length()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public removeFromMemory()V
    .locals 6

    move-object/16 v3, p0

    .line 125
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Passphrase;->mPassphrase:[C

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Passphrase;->mPassphrase:[C

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 128
    :cond_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Passphrase;->mCachedSessionKeys:Ljava/util/HashMap;

    if-nez v0, :cond_1

    return-void

    .line 131
    :cond_1
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/Passphrase;->mCachedSessionKeys:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const/4 v2, 0x0

    .line 132
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_0

    :cond_2
    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/Passphrase;--->removeFromMemory()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setEmpty()V
    .locals 4

    move-object/16 v1, p0

    .line 89
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/Passphrase;->removeFromMemory()V

    const/4 v0, 0x0

    .line 90
    new-array v0, v0, [C

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/util/Passphrase;->mPassphrase:[C

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/Passphrase;--->setEmpty()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    const-string v0, "Passphrase: hidden"

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/Passphrase;--->toString()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toStringUnsafe()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 157
    new-instance v0, Ljava/lang/String;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/util/Passphrase;->mPassphrase:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/util/Passphrase;--->toStringUnsafe()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move/16 v5, p2

    .line 193
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/util/Passphrase;->mPassphrase:[C

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeCharArray([C)V

    .line 194
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/util/Passphrase;->mCachedSessionKeys:Ljava/util/HashMap;

    const/4 v0, 0x0

    if-eqz v5, :cond_2

    iget-object v5, v3, Lorg/sufficientlysecure/keychain/util/Passphrase;->mCachedSessionKeys:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 198
    :cond_0
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/util/Passphrase;->mCachedSessionKeys:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/util/Passphrase;->mCachedSessionKeys:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 200
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v4, v2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 201
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :cond_1
    return-void

    .line 195
    :cond_2
    :goto_1
    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/util/Passphrase;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
