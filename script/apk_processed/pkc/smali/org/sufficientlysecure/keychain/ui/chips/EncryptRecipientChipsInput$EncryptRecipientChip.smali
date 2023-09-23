.class public Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;
.super Ljava/lang/Object;
.source "EncryptRecipientChipsInput.java"

# interfaces
.implements Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncryptRecipientChip"
.end annotation


# instance fields
.field public final keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 59
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;---><init>(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getId()J
    .locals 5

    move-object/16 v2, p0

    .line 65
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v0

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;--->getId()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isKeptForConstraint(Ljava/lang/CharSequence;)Z
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 70
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->uidSearchString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    return v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;--->isKeptForConstraint(Ljava/lang/CharSequence;)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
