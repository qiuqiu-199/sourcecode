.class public Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter;
.super Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;
.source "EncryptRecipientChipAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter<",
        "Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;",
        "Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/materialchips/ChipsInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/sufficientlysecure/materialchips/ChipsInput<",
            "Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;",
            ">;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 25
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/materialchips/ChipsInput;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/materialchips/ChipsInput;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private simpleChipFromKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Lorg/sufficientlysecure/materialchips/simple/SimpleChip;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 69
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 70
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->email()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->email()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 74
    :cond_0
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter;->context:Landroid/content/Context;

    const v0, 0x7f110d45

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->name()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->email()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 80
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->email()Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object v4, v0

    .line 86
    :goto_0
    new-instance v0, Lorg/sufficientlysecure/materialchips/simple/SimpleChip;

    invoke-direct {v0, v4, v1}, Lorg/sufficientlysecure/materialchips/simple/SimpleChip;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter;--->simpleChipFromKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Lorg/sufficientlysecure/materialchips/simple/SimpleChip;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getDetailedChipView(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;)Lorg/sufficientlysecure/materialchips/views/DetailedChipView;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 51
    new-instance v0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    .line 52
    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter;->simpleChipFromKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Lorg/sufficientlysecure/materialchips/simple/SimpleChip;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;->chip(Lorg/sufficientlysecure/materialchips/model/ChipInterface;)Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;

    move-result-object v3

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter;->context:Landroid/content/Context;

    const v1, 0x7f060030

    .line 53
    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;->backgroundColor(Landroid/content/res/ColorStateList;)Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;

    move-result-object v3

    .line 54
    invoke-virtual {v3}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;->build()Lorg/sufficientlysecure/materialchips/views/DetailedChipView;

    move-result-object v3

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter;--->getDetailedChipView(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;)Lorg/sufficientlysecure/materialchips/views/DetailedChipView;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic getDetailedChipView(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;)Lorg/sufficientlysecure/materialchips/views/DetailedChipView;
    .locals 0

    .line 23
    check-cast p1, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter;->getDetailedChipView(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;)Lorg/sufficientlysecure/materialchips/views/DetailedChipView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onBindChipViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 23
    check-cast p1, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter;->onBindChipViewHolder(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindChipViewHolder(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter$ItemViewHolder;I)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 44
    invoke-virtual {v2, v4}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter;->getItem(I)Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;

    .line 45
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter$ItemViewHolder;->access$000(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter$ItemViewHolder;)Lorg/sufficientlysecure/materialchips/ChipView;

    move-result-object v1

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-direct {v2, v0}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter;->simpleChipFromKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Lorg/sufficientlysecure/materialchips/simple/SimpleChip;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/materialchips/ChipView;->inflate(Lorg/sufficientlysecure/materialchips/model/ChipInterface;)V

    .line 46
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter$ItemViewHolder;->access$000(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter$ItemViewHolder;)Lorg/sufficientlysecure/materialchips/ChipView;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter;->handleClickOnEditText(Lorg/sufficientlysecure/materialchips/ChipView;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter;--->onBindChipViewHolder(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter$ItemViewHolder;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCreateChipViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter;->onCreateChipViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateChipViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter$ItemViewHolder;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    const/4 v2, 0x4

    .line 30
    invoke-static {v2}, Lorg/sufficientlysecure/materialchips/util/ViewUtil;->dpToPx(I)I

    move-result v2

    .line 31
    new-instance v3, Lorg/sufficientlysecure/materialchips/ChipView$Builder;

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter;->context:Landroid/content/Context;

    invoke-direct {v3, v0}, Lorg/sufficientlysecure/materialchips/ChipView$Builder;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-virtual {v3}, Lorg/sufficientlysecure/materialchips/ChipView$Builder;->build()Lorg/sufficientlysecure/materialchips/ChipView;

    move-result-object v3

    .line 37
    invoke-virtual {v3, v2, v2, v2, v2}, Lorg/sufficientlysecure/materialchips/ChipView;->setPadding(IIII)V

    .line 39
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter$ItemViewHolder;

    invoke-direct {v2, v1, v3}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter$ItemViewHolder;-><init>(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter;Landroid/view/View;)V

    return-object v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter;--->onCreateChipViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter$ItemViewHolder;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
