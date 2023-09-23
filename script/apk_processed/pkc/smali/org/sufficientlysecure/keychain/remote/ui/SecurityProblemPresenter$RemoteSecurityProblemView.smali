.class interface abstract Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;
.super Ljava/lang/Object;
.source "SecurityProblemPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "RemoteSecurityProblemView"
.end annotation


# virtual methods
.method public abstract finishAsCancelled()V
.end method

.method public abstract finishAsSuppressed()V
.end method

.method public abstract setTitleClientIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract showLayoutEncryptInsecureBitsize(II)V
.end method

.method public abstract showLayoutEncryptNotWhitelistedCurve(Ljava/lang/String;)V
.end method

.method public abstract showLayoutEncryptUnidentifiedKeyProblem()V
.end method

.method public abstract showLayoutInsecureHashAlgorithm(I)V
.end method

.method public abstract showLayoutInsecureSymmetric(I)V
.end method

.method public abstract showLayoutMissingMdc()V
.end method

.method public abstract showLayoutSignInsecureBitsize(II)V
.end method

.method public abstract showLayoutSignNotWhitelistedCurve(Ljava/lang/String;)V
.end method

.method public abstract showLayoutSignUnidentifiedKeyProblem()V
.end method

.method public abstract showOverrideButton()V
.end method

.method public abstract showOverrideMessage(I)V
.end method

.method public abstract showOverrideUndoButton()V
.end method

.method public abstract showViewKeyButton()V
.end method
