.class interface abstract Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;
.super Ljava/lang/Object;
.source "RequestKeyPermissionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "RequestKeyPermissionMvpView"
.end annotation


# virtual methods
.method public abstract displayKeyInfo(Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;)V
.end method

.method public abstract finish()V
.end method

.method public abstract finishAsCancelled()V
.end method

.method public abstract setTitleClientIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setTitleText(Ljava/lang/String;)V
.end method

.method public abstract switchToLayoutNoSecret()V
.end method

.method public abstract switchToLayoutRequestKeyChoice()V
.end method
