.class public Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;
.super Lorg/sufficientlysecure/materialchips/ChipsInput$ChipDropdownAdapter;
.source "EncryptRecipientDropdownAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/materialchips/ChipsInput$ChipDropdownAdapter<",
        "Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;",
        "Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final keyInfoFormatter:Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

.field private final layoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;",
            ">;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 27
    invoke-direct {v0, v2}, Lorg/sufficientlysecure/materialchips/ChipsInput$ChipDropdownAdapter;-><init>(Ljava/util/List;)V

    .line 29
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 30
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    invoke-direct {v2, v1}, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;->keyInfoFormatter:Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;---><init>(Landroid/content/Context;Ljava/util/List;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;)Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;
    .locals 0

    .line 22
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;->keyInfoFormatter:Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;->onBindViewHolder(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 66
    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;->getItem(I)Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;

    .line 67
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;->bind(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;--->onBindViewHolder(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 60
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0095

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 61
    new-instance v4, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;

    invoke-direct {v4, v2, v3}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;-><init>(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;Landroid/view/View;)V

    return-object v4

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;--->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
