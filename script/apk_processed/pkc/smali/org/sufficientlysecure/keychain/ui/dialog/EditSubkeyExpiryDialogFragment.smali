.class public Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "EditSubkeyExpiryDialogFragment.java"


# static fields
.field private static final ARG_CREATION:Ljava/lang/String; = "creation"

.field private static final ARG_EXPIRY:Ljava/lang/String; = "expiry"

.field private static final ARG_MESSENGER:Ljava/lang/String; = "messenger"

.field public static final MESSAGE_CANCEL:I = 0x2

.field public static final MESSAGE_DATA_EXPIRY:Ljava/lang/String; = "expiry"

.field public static final MESSAGE_NEW_EXPIRY:I = 0x1


# instance fields
.field private mMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 46
    invoke-direct {v0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;Ljava/lang/Integer;Landroid/os/Bundle;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;->sendMessageToHandler(Ljava/lang/Integer;Landroid/os/Bundle;)V

    return-void
.end method

.method public static newInstance(Landroid/os/Messenger;Ljava/lang/Long;Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    .line 62
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;-><init>()V

    .line 63
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "messenger"

    .line 64
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "creation"

    .line 65
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v3, "expiry"

    .line 66
    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 68
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;--->newInstance(Landroid/os/Messenger;Ljava/lang/Long;Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private sendMessageToHandler(Ljava/lang/Integer;Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 219
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 220
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->what:I

    if-eqz v3, :cond_0

    .line 222
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_0
    const/4 v2, 0x0

    .line 226
    :try_start_0
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v0, "Messenger is null!"

    .line 230
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v0, "Exception sending message, Is handler present?"

    .line 228
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;--->sendMessageToHandler(Ljava/lang/Integer;Landroid/os/Bundle;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 207
    invoke-super {v1, v2}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;--->onCancel(Landroid/content/DialogInterface;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;->dismiss()V

    const/4 v2, 0x2

    .line 210
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v0, 0x0

    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;->sendMessageToHandler(Ljava/lang/Integer;Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 15

    move-object/16 v12, p0

    move-object/16 v13, p1

    .line 79
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    .line 81
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "messenger"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, v12, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;->mMessenger:Landroid/os/Messenger;

    .line 82
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "creation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 83
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "expiry"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "UTC"

    .line 85
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    mul-long v0, v0, v5

    .line 86
    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string v0, "UTC"

    .line 87
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    mul-long v5, v5, v2

    .line 88
    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 91
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 92
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 96
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;

    invoke-direct {v1, v13}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f11019e

    .line 98
    invoke-virtual {v1, v5}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 100
    invoke-virtual {v13}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v13

    const/4 v5, 0x0

    const v6, 0x7f0c006c

    .line 101
    invoke-virtual {v13, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 102
    invoke-virtual {v1, v13}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const v6, 0x7f09014c

    .line 104
    invoke-virtual {v13, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    const v7, 0x7f09014a

    .line 105
    invoke-virtual {v13, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/DatePicker;

    const v8, 0x7f090149

    .line 106
    invoke-virtual {v13, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f09014b

    .line 107
    invoke-virtual {v13, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 109
    new-instance v9, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment$1;

    invoke-direct {v9, v12, v13}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;Landroid/widget/LinearLayout;)V

    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const-wide/16 v9, 0x0

    cmp-long v11, v2, v9

    const/4 v2, 0x1

    if-nez v11, :cond_0

    .line 121
    invoke-virtual {v6, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v0, 0x8

    .line 122
    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v13, 0x7f110074

    .line 124
    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 126
    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 127
    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    .line 129
    invoke-static {v13}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v13

    .line 130
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    .line 129
    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :goto_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v13

    .line 135
    invoke-virtual {v4, v13}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x5

    const/4 v8, 0x2

    const/4 v9, 0x6

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v4}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Calendar;

    .line 140
    invoke-virtual {v13, v9, v2}, Ljava/util/Calendar;->add(II)V

    .line 141
    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 143
    invoke-virtual {v13, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 144
    invoke-virtual {v13, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 145
    invoke-virtual {v13, v3}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 142
    invoke-virtual {v7, v0, v2, v13, v5}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    goto :goto_1

    .line 152
    :cond_1
    invoke-virtual {v13, v9, v2}, Ljava/util/Calendar;->add(II)V

    .line 153
    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 155
    invoke-virtual {v13, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 156
    invoke-virtual {v13, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 157
    invoke-virtual {v13, v3}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 154
    invoke-virtual {v7, v0, v2, v13, v5}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    :goto_1
    const v13, 0x104000a

    .line 162
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment$2;

    invoke-direct {v0, v12, v6, v7, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;Landroid/widget/CheckBox;Landroid/widget/DatePicker;Ljava/util/Calendar;)V

    invoke-virtual {v1, v13, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const/high16 v13, 0x1040000

    .line 195
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment$3;

    invoke-direct {v0, v12}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment$3;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;)V

    invoke-virtual {v1, v13, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 202
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v13

    return-object v13

    const-string v14, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;--->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;"

    invoke-static/range {v14 .. v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
