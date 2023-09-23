.class public interface abstract Lorg/piwik/sdk/extra/DownloadTracker$Extra;
.super Ljava/lang/Object;
.source "DownloadTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/piwik/sdk/extra/DownloadTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Extra"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/piwik/sdk/extra/DownloadTracker$Extra$None;,
        Lorg/piwik/sdk/extra/DownloadTracker$Extra$ApkChecksum;
    }
.end annotation


# virtual methods
.method public abstract buildExtraIdentifier()Ljava/lang/String;
.end method

.method public abstract isIntensiveWork()Z
.end method
