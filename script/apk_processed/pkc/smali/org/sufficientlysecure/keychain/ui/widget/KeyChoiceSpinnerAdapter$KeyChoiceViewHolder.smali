.class public Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter$KeyChoiceViewHolder;
.super Ljava/lang/Object;
.source "KeyChoiceSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyChoiceViewHolder"
.end annotation


# instance fields
.field private mCreationDate:Landroid/widget/TextView;

.field private mMainUserId:Landroid/widget/TextView;

.field private mMainUserIdRest:Landroid/widget/TextView;

.field private mStatus:Landroid/widget/ImageView;

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;Landroid/view/View;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 131
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter$KeyChoiceViewHolder;->this$0:Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const v1, 0x7f0901b0

    .line 132
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter$KeyChoiceViewHolder;->mMainUserId:Landroid/widget/TextView;

    const v1, 0x7f0901ae

    .line 133
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter$KeyChoiceViewHolder;->mMainUserIdRest:Landroid/widget/TextView;

    const v1, 0x7f0901b1

    .line 134
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter$KeyChoiceViewHolder;->mStatus:Landroid/widget/ImageView;

    const v1, 0x7f0901ac

    .line 135
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter$KeyChoiceViewHolder;->mCreationDate:Landroid/widget/TextView;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter$KeyChoiceViewHolder;---><init>(Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;Landroid/view/View;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bind(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;Z)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 139
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter$KeyChoiceViewHolder;->this$0:Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;

    invoke-static {v4}, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->access$000(Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;)Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->setKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V

    .line 140
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter$KeyChoiceViewHolder;->this$0:Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->access$000(Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;)Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    move-result-object v3

    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter$KeyChoiceViewHolder;->mMainUserId:Landroid/widget/TextView;

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter$KeyChoiceViewHolder;->mMainUserIdRest:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v0}, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->formatUserId(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 141
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter$KeyChoiceViewHolder;->this$0:Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->access$000(Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;)Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    move-result-object v3

    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter$KeyChoiceViewHolder;->mCreationDate:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->formatCreationDate(Landroid/widget/TextView;)V

    .line 142
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter$KeyChoiceViewHolder;->this$0:Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->access$000(Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;)Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    move-result-object v3

    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter$KeyChoiceViewHolder;->mStatus:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->formatStatusIcon(Landroid/widget/ImageView;)V

    .line 143
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter$KeyChoiceViewHolder;->this$0:Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->access$000(Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;)Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/widget/TextView;

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter$KeyChoiceViewHolder;->mMainUserId:Landroid/widget/TextView;

    const/4 v1, 0x0

    aput-object v0, v4, v1

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter$KeyChoiceViewHolder;->mMainUserIdRest:Landroid/widget/TextView;

    const/4 v1, 0x1

    aput-object v0, v4, v1

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter$KeyChoiceViewHolder;->mCreationDate:Landroid/widget/TextView;

    const/4 v1, 0x2

    aput-object v0, v4, v1

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->greyInvalidKeys(Ljava/util/List;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter$KeyChoiceViewHolder;--->bind(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
