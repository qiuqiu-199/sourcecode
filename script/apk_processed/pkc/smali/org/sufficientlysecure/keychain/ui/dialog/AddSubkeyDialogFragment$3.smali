.class Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$3;
.super Ljava/lang/Object;
.source "AddSubkeyDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 229
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$3;---><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    .line 232
    iget-object v9, v8, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    invoke-static {v9}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Landroid/widget/RadioGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v9

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne v9, v1, :cond_0

    .line 233
    iget-object v9, v8, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const v1, 0x7f11014d

    invoke-static {v9, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    return-void

    .line 238
    :cond_0
    iget-object v9, v8, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    invoke-static {v9}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->access$600(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Landroid/widget/Spinner;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/sufficientlysecure/keychain/util/Choice;

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/util/Choice;->getId()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;

    .line 244
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$5;->$SwitchMap$org$sufficientlysecure$keychain$ui$dialog$AddSubkeyDialogFragment$SupportedKeyType:[I

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    move-object v1, v2

    move-object v3, v1

    goto :goto_2

    .line 262
    :pswitch_0
    sget-object v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;->NIST_P521:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;

    goto :goto_0

    .line 258
    :pswitch_1
    sget-object v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;->NIST_P256:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;

    :goto_0
    move-object v3, v2

    goto :goto_2

    :pswitch_2
    const/16 v1, 0x1000

    .line 254
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :pswitch_3
    const/16 v1, 0xc00

    .line 250
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :pswitch_4
    const/16 v1, 0x800

    .line 246
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    move-object v3, v1

    move-object v1, v2

    .line 268
    :goto_2
    sget-object v4, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$5;->$SwitchMap$org$sufficientlysecure$keychain$ui$dialog$AddSubkeyDialogFragment$SupportedKeyType:[I

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;->ordinal()I

    move-result v9

    aget v9, v4, v9

    packed-switch v9, :pswitch_data_1

    goto :goto_3

    .line 286
    :pswitch_5
    sget-object v2, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->EDDSA:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    goto :goto_3

    .line 278
    :pswitch_6
    iget-object v9, v8, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    invoke-static {v9}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->access$500(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Landroid/widget/RadioButton;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 279
    sget-object v2, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->ECDH:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    goto :goto_3

    .line 281
    :cond_1
    sget-object v2, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->ECDSA:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    goto :goto_3

    .line 272
    :pswitch_7
    sget-object v2, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->RSA:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    :goto_3
    const/4 v9, 0x0

    .line 292
    iget-object v4, v8, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    invoke-static {v4}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->access$200(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v9, 0x1

    .line 295
    :cond_2
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->access$700(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    or-int/lit8 v9, v9, 0x2

    goto :goto_4

    .line 297
    :cond_3
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->access$500(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    or-int/lit8 v9, v9, 0xc

    goto :goto_4

    .line 299
    :cond_4
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->access$400(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    or-int/lit8 v9, v9, 0xe

    goto :goto_4

    .line 301
    :cond_5
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->access$800(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    or-int/lit8 v9, v9, 0x20

    .line 307
    :cond_6
    :goto_4
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->access$900(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    const-wide/16 v4, 0x0

    goto :goto_5

    .line 310
    :cond_7
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 312
    iget-object v4, v8, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    invoke-static {v4}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->access$1000(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Landroid/widget/DatePicker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getYear()I

    move-result v4

    iget-object v5, v8, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    .line 313
    invoke-static {v5}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->access$1000(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Landroid/widget/DatePicker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/DatePicker;->getMonth()I

    move-result v5

    iget-object v6, v8, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    invoke-static {v6}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->access$1000(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Landroid/widget/DatePicker;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v6

    .line 312
    invoke-virtual {v0, v4, v5, v6}, Ljava/util/Calendar;->set(III)V

    const-string v4, "UTC"

    .line 315
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 317
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 321
    :goto_5
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 320
    invoke-static {v2, v3, v1, v9, v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->createSubkeyAdd(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;Ljava/lang/Integer;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;ILjava/lang/Long;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;

    move-result-object v9

    .line 323
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->access$1100(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$OnAlgorithmSelectedListener;

    move-result-object v0

    invoke-interface {v0, v9}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$OnAlgorithmSelectedListener;->onAlgorithmSelected(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;)V

    .line 326
    iget-object v9, v8, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
    .end packed-switch

    const-string v10, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$3;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
