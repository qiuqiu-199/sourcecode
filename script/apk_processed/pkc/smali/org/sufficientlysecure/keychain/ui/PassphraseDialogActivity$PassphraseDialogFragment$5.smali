.class Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$5;
.super Ljava/lang/Object;
.source "PassphraseDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

.field final synthetic val$positive:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;Landroid/widget/Button;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 453
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$5;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$5;->val$positive:Landroid/widget/Button;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$5;---><init>(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;Landroid/widget/Button;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 16

    move-object/16 v13, p0

    move-object/16 v14, p1

    .line 457
    iget-object v14, v13, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$5;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    invoke-static {v14}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->access$200(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v14

    iget-object v14, v14, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mType:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    sget-object v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->BACKUP_CODE:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const/16 v1, 0x2d

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v14, v0, :cond_2

    .line 458
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v0, 0x1a

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 459
    iget-object v0, v13, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$5;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->access$300(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;)[Landroid/widget/EditText;

    move-result-object v0

    array-length v5, v0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v6, v0, v3

    .line 460
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    if-ge v7, v2, :cond_0

    return-void

    .line 463
    :cond_0
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 466
    :cond_1
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 468
    new-instance v0, Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>(Ljava/lang/String;)V

    .line 469
    iget-object v14, v13, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$5;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    invoke-static {v14, v0, v4}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->access$400(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;)V

    return-void

    .line 474
    :cond_2
    iget-object v14, v13, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$5;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    invoke-static {v14}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->access$200(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v14

    iget-object v14, v14, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mType:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    sget-object v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->NUMERIC_9X4:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    if-eq v14, v0, :cond_6

    iget-object v14, v13, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$5;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    .line 475
    invoke-static {v14}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->access$200(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v14

    iget-object v14, v14, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mType:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    sget-object v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->NUMERIC_9X4_AUTOCRYPT:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    if-ne v14, v0, :cond_3

    goto :goto_1

    .line 495
    :cond_3
    new-instance v14, Lorg/sufficientlysecure/keychain/util/Passphrase;

    iget-object v0, v13, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$5;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->access$500(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-direct {v14, v0}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>(Landroid/widget/EditText;)V

    .line 496
    iget-object v0, v13, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$5;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->access$600(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;)Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;->getSelectedTimeToLive()I

    move-result v12

    .line 498
    iget-object v0, v13, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$5;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/sufficientlysecure/keychain/util/Preferences;->setCacheTtlSeconds(I)V

    .line 501
    iget-object v0, v13, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$5;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->access$200(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v0

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mType:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->PASSPHRASE_SYMMETRIC:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    if-ne v0, v1, :cond_5

    .line 502
    iget-object v0, v13, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$5;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->access$200(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v0

    iget-boolean v0, v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSkipCaching:Z

    if-nez v0, :cond_4

    .line 503
    iget-object v0, v13, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$5;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    iget-object v0, v13, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$5;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    const v1, 0x7f110bc9

    .line 505
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v10, v14

    .line 503
    invoke-static/range {v5 .. v12}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->addCachedPassphrase(Landroid/content/Context;JJLorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/String;I)V

    .line 508
    :cond_4
    iget-object v0, v13, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$5;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    invoke-static {v0, v14, v4}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->access$400(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;)V

    return-void

    .line 512
    :cond_5
    iget-object v0, v13, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$5;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    iget-object v1, v13, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$5;->val$positive:Landroid/widget/Button;

    invoke-static {v0, v1, v14, v12}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->access$700(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;Landroid/widget/Button;Lorg/sufficientlysecure/keychain/util/Passphrase;I)V

    return-void

    .line 476
    :cond_6
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v0, 0x24

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 477
    iget-object v0, v13, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$5;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->access$200(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->hasPassphraseBegin()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 478
    iget-object v0, v13, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$5;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->access$200(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->getPassphraseBegin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    :cond_7
    iget-object v0, v13, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$5;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->access$300(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;)[Landroid/widget/EditText;

    move-result-object v0

    array-length v5, v0

    :goto_2
    if-ge v3, v5, :cond_9

    aget-object v6, v0, v3

    .line 481
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_8

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    if-eq v7, v2, :cond_8

    return-void

    .line 484
    :cond_8
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 487
    :cond_9
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 489
    new-instance v0, Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>(Ljava/lang/String;)V

    .line 490
    iget-object v14, v13, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$5;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    invoke-static {v14, v0, v4}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->access$400(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;)V

    return-void

    const-string v15, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$5;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
