.class public Lorg/sufficientlysecure/keychain/ui/keyview/view/SystemContactCardView;
.super Landroid/support/v7/widget/CardView;
.source "SystemContactCardView.java"


# instance fields
.field private vSystemContactLayout:Landroid/widget/LinearLayout;

.field private vSystemContactName:Landroid/widget/TextView;

.field private vSystemContactPicture:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 40
    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c00f8

    const/4 v0, 0x1

    invoke-virtual {v2, v3, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0902fe

    .line 44
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/SystemContactCardView;->vSystemContactLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0902ff

    .line 45
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/SystemContactCardView;->vSystemContactName:Landroid/widget/TextView;

    const v3, 0x7f090300

    .line 46
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/SystemContactCardView;->vSystemContactPicture:Landroid/widget/ImageView;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/keyview/view/SystemContactCardView;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public hideLinkedSystemContact()V
    .locals 4

    move-object/16 v1, p0

    const/16 v0, 0x8

    .line 54
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/view/SystemContactCardView;->setVisibility(I)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/view/SystemContactCardView;--->hideLinkedSystemContact()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setSystemContactClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 50
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/SystemContactCardView;->vSystemContactLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/view/SystemContactCardView;--->setSystemContactClickListener(Landroid/view/View$OnClickListener;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showLinkedSystemContact(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 58
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/SystemContactCardView;->vSystemContactName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_0

    .line 60
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/SystemContactCardView;->vSystemContactPicture:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/SystemContactCardView;->vSystemContactPicture:Landroid/widget/ImageView;

    const v3, 0x7f0800cd

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const/4 v2, 0x0

    .line 65
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/view/SystemContactCardView;->setVisibility(I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/keyview/view/SystemContactCardView;--->showLinkedSystemContact(Ljava/lang/String;Landroid/graphics/Bitmap;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
