.class public Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;
.super Landroid/widget/ArrayAdapter;
.source "UserIdsAddedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNewKeyring:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move/16 p0, p3

    const/4 v0, -0x1

    .line 45
    invoke-direct {v1, v2, v0, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const-string v0, "layout_inflater"

    .line 46
    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 47
    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;->mData:Ljava/util/List;

    .line 48
    iput-boolean p0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;->mNewKeyring:Z

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;---><init>(Landroid/app/Activity;Ljava/util/List;Z)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 52
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;->mData:Ljava/util/List;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;--->getData()Ljava/util/List;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    move-object/16 v6, p0

    move/16 v7, p1

    move-object/16 v8, p2

    move-object/16 p0, p3

    const/16 p0, 0x8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez v8, :cond_0

    .line 67
    iget-object v8, v6, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c010f

    invoke-virtual {v8, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 68
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;

    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;-><init>()V

    const v3, 0x7f090357

    .line 69
    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;->vAddress:Landroid/widget/TextView;

    const v3, 0x7f09035f

    .line 70
    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;->vName:Landroid/widget/TextView;

    const v3, 0x7f09035b

    .line 71
    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;->vComment:Landroid/widget/TextView;

    const v3, 0x7f09035c

    .line 72
    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;->vDelete:Landroid/widget/ImageButton;

    .line 73
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;->vDelete:Landroid/widget/ImageButton;

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v3, 0x7f090356

    .line 76
    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f09035d

    .line 77
    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 78
    invoke-virtual {v3, p0}, Landroid/view/View;->setVisibility(I)V

    .line 79
    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    invoke-virtual {v8, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 83
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;->vDelete:Landroid/widget/ImageButton;

    new-instance v4, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$1;

    invoke-direct {v4, v6, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$1;-><init>(Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;

    .line 94
    invoke-virtual {v6, v7}, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;->mModel:Ljava/lang/String;

    .line 96
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;->mModel:Ljava/lang/String;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/pgp/KeyRing;->splitUserId(Ljava/lang/String;)Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    move-result-object v3

    .line 97
    iget-object v4, v3, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->name:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 98
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;->vName:Landroid/widget/TextView;

    iget-object v5, v3, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 100
    :cond_1
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;->vName:Landroid/widget/TextView;

    const v5, 0x7f110d45

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 102
    :goto_0
    iget-object v4, v3, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->email:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 103
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;->vAddress:Landroid/widget/TextView;

    iget-object v5, v3, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->email:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;->vAddress:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 106
    :cond_2
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;->vAddress:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    :goto_1
    iget-object v4, v3, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->comment:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 109
    iget-object p0, v2, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;->vComment:Landroid/widget/TextView;

    iget-object v3, v3, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->comment:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object p0, v2, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;->vComment:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 112
    :cond_3
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;->vComment:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    :goto_2
    iget-boolean p0, v6, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;->mNewKeyring:Z

    const/4 v3, 0x1

    if-eqz p0, :cond_4

    if-nez v7, :cond_4

    const/4 v7, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_5

    .line 117
    iget-object v7, v2, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;->vName:Landroid/widget/TextView;

    invoke-virtual {v7, v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 118
    iget-object v7, v2, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;->vAddress:Landroid/widget/TextView;

    invoke-virtual {v7, v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_4

    .line 120
    :cond_5
    iget-object v7, v2, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;->vName:Landroid/widget/TextView;

    invoke-virtual {v7, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 121
    iget-object v7, v2, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter$ViewHolder;->vAddress:Landroid/widget/TextView;

    invoke-virtual {v7, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_4
    return-object v8

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;--->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
