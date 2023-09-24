.class public interface abstract Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$StatusHolder;
.super Ljava/lang/Object;
.source "KeyFormattingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StatusHolder"
.end annotation


# virtual methods
.method public abstract getEncryptionStatusIcon()Landroid/widget/ImageView;
.end method

.method public abstract getEncryptionStatusText()Landroid/widget/TextView;
.end method

.method public abstract getSignatureAction()Landroid/widget/ViewAnimator;
.end method

.method public abstract getSignatureLayout()Landroid/view/View;
.end method

.method public abstract getSignatureStatusIcon()Landroid/widget/ImageView;
.end method

.method public abstract getSignatureStatusText()Landroid/widget/TextView;
.end method

.method public abstract getSignatureUserEmail()Landroid/widget/TextView;
.end method

.method public abstract getSignatureUserName()Landroid/widget/TextView;
.end method

.method public abstract hasEncrypt()Z
.end method
