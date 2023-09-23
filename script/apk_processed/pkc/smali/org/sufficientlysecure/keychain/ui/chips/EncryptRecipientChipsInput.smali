.class public Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;
.super Lorg/sufficientlysecure/materialchips/ChipsInput;
.source "EncryptRecipientChipsInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/materialchips/ChipsInput<",
        "Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;",
        ">;"
    }
.end annotation


# instance fields
.field private preselectedKeyIds:[J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 21
    invoke-direct {v0, v1}, Lorg/sufficientlysecure/materialchips/ChipsInput;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;->init()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;---><init>(Landroid/content/Context;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 26
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/materialchips/ChipsInput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;->init()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static chipFromUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;
    .locals 4

    move-object/16 v1, p0

    .line 75
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;-><init>(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;--->chipFromUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private init()V
    .locals 5

    move-object/16 v2, p0

    .line 31
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/materialchips/ChipsInput;)V

    .line 32
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;->setChipsAdapter(Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;--->init()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public setData(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;",
            ">;)V"
        }
    .end annotation

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 36
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 37
    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;->setChipDropdownAdapter(Lorg/sufficientlysecure/materialchips/ChipsInput$ChipDropdownAdapter;)V

    .line 39
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;->preselectedKeyIds:[J

    if-eqz v0, :cond_2

    .line 40
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;->preselectedKeyIds:[J

    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;

    .line 43
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;->preselectedKeyIds:[J

    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    if-ltz v2, :cond_0

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;->addChips(Ljava/util/List;)V

    const/4 v6, 0x0

    .line 48
    iput-object v6, v5, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;->preselectedKeyIds:[J

    :cond_2
    return-void

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;--->setData(Ljava/util/List;)V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setPreSelectedKeyIds([J)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 53
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;->preselectedKeyIds:[J

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;--->setPreSelectedKeyIds([J)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
