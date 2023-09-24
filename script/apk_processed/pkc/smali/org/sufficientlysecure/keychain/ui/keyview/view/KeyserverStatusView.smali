.class public Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;
.super Landroid/widget/FrameLayout;
.source "KeyserverStatusView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;
    }
.end annotation


# instance fields
.field private final vIcon:Landroid/widget/ImageView;

.field private final vLayout:Landroid/view/View;

.field private final vSubtitle:Landroid/widget/TextView;

.field private final vTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 46
    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c008f

    const/4 v0, 0x1

    invoke-virtual {v2, v3, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0901bb

    .line 50
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;->vLayout:Landroid/view/View;

    const v3, 0x7f0901bd

    .line 52
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;->vTitle:Landroid/widget/TextView;

    const v3, 0x7f0901bc

    .line 53
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;->vSubtitle:Landroid/widget/TextView;

    const v3, 0x7f0901b5

    .line 54
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;->vIcon:Landroid/widget/ImageView;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setDisplayStatus(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 96
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;->vTitle:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;->access$000(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 97
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;->vIcon:Landroid/widget/ImageView;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;->access$100(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;->vIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;->access$200(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;)I

    move-result v3

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/4 v3, 0x0

    .line 100
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;->setVisibility(I)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;--->setDisplayStatus(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public setDisplayStatusNotPublished()V
    .locals 4

    move-object/16 v1, p0

    .line 82
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;->NOT_PUBLISHED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;

    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;->setDisplayStatus(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;--->setDisplayStatusNotPublished()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setDisplayStatusPublished()V
    .locals 4

    move-object/16 v1, p0

    .line 78
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;->PUBLISHED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;

    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;->setDisplayStatus(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;--->setDisplayStatusPublished()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setDisplayStatusUnknown()V
    .locals 5

    move-object/16 v2, p0

    .line 86
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;->UNKNOWN:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;

    invoke-direct {v2, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;->setDisplayStatus(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;)V

    .line 87
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;->vSubtitle:Landroid/widget/TextView;

    const v1, 0x7f110876

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;--->setDisplayStatusUnknown()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setLastUpdated(Ljava/util/Date;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 91
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 92
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;->vSubtitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    const v5, 0x7f110875

    invoke-virtual {v1, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;--->setLastUpdated(Ljava/util/Date;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
