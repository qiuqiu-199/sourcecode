.class public Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;
.super Leu/davidea/viewholders/FlexibleViewHolder;
.source "KeyChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyChoiceViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

.field private final vCheckbox:Landroid/widget/CheckBox;

.field private final vCreation:Landroid/widget/TextView;

.field private final vName:Landroid/widget/TextView;

.field private final vRadio:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 228
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    .line 229
    invoke-direct {v0, v2, p0}, Leu/davidea/viewholders/FlexibleViewHolder;-><init>(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    const v1, 0x7f090310

    .line 231
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;->vName:Landroid/widget/TextView;

    const v1, 0x7f09030f

    .line 232
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;->vCreation:Landroid/widget/TextView;

    const v1, 0x7f0900dd

    .line 233
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;->vCheckbox:Landroid/widget/CheckBox;

    const v1, 0x7f09027b

    .line 234
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;->vRadio:Landroid/widget/RadioButton;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;---><init>(Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method bind(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;IZZ)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    move/16 p0, p3

    move/16 p1, p4

    .line 238
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->access$200(Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;)Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->setKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V

    .line 240
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;->vName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->user_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->access$200(Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;)Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    move-result-object v2

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;->vCreation:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->formatCreationDate(Landroid/widget/TextView;)V

    const/4 v2, 0x0

    const/16 v0, 0x8

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 257
    :pswitch_0
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;->vCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 258
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;->vCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 259
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;->vRadio:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0

    .line 251
    :pswitch_1
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;->vRadio:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 252
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;->vRadio:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 253
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;->vCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 246
    :pswitch_2
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;->vRadio:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 247
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;->vCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 264
    :goto_0
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;->vCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 265
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;->vRadio:Landroid/widget/RadioButton;

    invoke-virtual {v2, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 266
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;->vName:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 267
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;->vCreation:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyChoiceViewHolder;--->bind(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;IZZ)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
