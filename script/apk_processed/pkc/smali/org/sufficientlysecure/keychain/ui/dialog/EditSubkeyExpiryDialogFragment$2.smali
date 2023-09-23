.class Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment$2;
.super Ljava/lang/Object;
.source "EditSubkeyExpiryDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;

.field final synthetic val$creationCal:Ljava/util/Calendar;

.field final synthetic val$datePicker:Landroid/widget/DatePicker;

.field final synthetic val$noExpiry:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;Landroid/widget/CheckBox;Landroid/widget/DatePicker;Ljava/util/Calendar;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 162
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment$2;->val$noExpiry:Landroid/widget/CheckBox;

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment$2;->val$datePicker:Landroid/widget/DatePicker;

    iput-object p1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment$2;->val$creationCal:Ljava/util/Calendar;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment$2;---><init>(Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;Landroid/widget/CheckBox;Landroid/widget/DatePicker;Ljava/util/Calendar;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    move/16 v10, p2

    .line 165
    iget-object v9, v8, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;->dismiss()V

    .line 168
    iget-object v9, v8, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment$2;->val$noExpiry:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    const-wide/16 v0, 0x0

    if-eqz v9, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v9

    .line 173
    iget-object v10, v8, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment$2;->val$datePicker:Landroid/widget/DatePicker;

    invoke-virtual {v10}, Landroid/widget/DatePicker;->getYear()I

    move-result v10

    iget-object v2, v8, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment$2;->val$datePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    iget-object v3, v8, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment$2;->val$datePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v3

    invoke-virtual {v9, v10, v2, v3}, Ljava/util/Calendar;->set(III)V

    const-string v10, "UTC"

    .line 175
    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 177
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    iget-object v10, v8, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment$2;->val$creationCal:Ljava/util/Calendar;

    .line 178
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    div-long/2addr v6, v4

    sub-long v4, v2, v6

    cmp-long v10, v4, v0

    if-gtz v10, :cond_2

    .line 180
    iget-object v9, v8, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    if-eqz v9, :cond_1

    const v10, 0x7f110174

    .line 182
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v9, v10, v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v9

    invoke-interface {v9}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    :cond_1
    return-void

    .line 186
    :cond_2
    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const-wide/16 v0, 0x3e8

    div-long v0, v9, v0

    .line 189
    :goto_0
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v10, "expiry"

    .line 190
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 191
    iget-object v10, v8, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v10, v0, v9}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;Ljava/lang/Integer;Landroid/os/Bundle;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment$2;--->onClick(Landroid/content/DialogInterface;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
